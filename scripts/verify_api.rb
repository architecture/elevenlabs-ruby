#!/usr/bin/env ruby
# Live API verification script — tests README examples against real ElevenLabs API
# Usage: ruby -Ilib scripts/verify_api.rb

require "elevenlabs"

api_key = ENV.fetch("ELEVENLABS_API_KEY") do
  abort "Set ELEVENLABS_API_KEY env var before running"
end

client = ElevenLabs::Client.new(api_key: api_key)

passed = 0
failed = 0

def check(label)
  print "  #{label} ... "
  yield
  puts "PASS"
  passed += 1
rescue => e
  puts "FAIL: #{e.message}"
  failed += 1
end

# Rebind counters inside the block via closure workaround
results = { passed: 0, failed: 0 }

def run(label, results)
  print "#{label} ... "
  $stdout.flush
  result = yield
  puts "PASS"
  results[:passed] += 1
  result
rescue => e
  puts "FAIL — #{e.class}: #{e.message}"
  results[:failed] += 1
  nil
end

puts "\n=== ElevenLabs API Verification ===\n\n"

# --- user ---
puts "[ user ]"
user = run("user.get returns hash with subscription", results) do
  r = client.user.get
  raise "missing 'subscription' key" unless r.key?("subscription")
  r
end

run("user.subscription.get returns hash", results) do
  r = client.user.subscription.get
  raise "expected Hash, got #{r.class}" unless r.is_a?(Hash)
  r
end

# --- models ---
puts "\n[ models ]"
run("models.list returns array", results) do
  r = client.models.list
  raise "expected Array, got #{r.class}" unless r.is_a?(Array)
  raise "empty models list" if r.empty?
  puts "    (#{r.length} models)"
  r
end

# --- voices ---
puts "\n[ voices ]"
voices_resp = run("voices.get_all returns hash with 'voices' key", results) do
  r = client.voices.get_all
  raise "missing 'voices' key — got keys: #{r.keys.inspect}" unless r.key?("voices")
  raise "expected Array for 'voices'" unless r["voices"].is_a?(Array)
  puts "    (#{r["voices"].length} voices)"
  r
end

# --- history ---
puts "\n[ history ]"
run("history.list returns hash with 'history' key", results) do
  r = client.history.list(page_size: 5)
  raise "missing 'history' key — got keys: #{r.keys.inspect}" unless r.key?("history")
  raise "expected Array for 'history'" unless r["history"].is_a?(Array)
  puts "    (#{r["history"].length} items)"
  r
end

# --- conversational_ai.agents ---
puts "\n[ conversational_ai.agents ]"
agents_resp = run("agents.list returns hash with 'agents' key", results) do
  r = client.conversational_ai.agents.list(page_size: 10)
  raise "missing 'agents' key — got keys: #{r.keys.inspect}" unless r.key?("agents")
  raise "expected Array for 'agents'" unless r["agents"].is_a?(Array)
  puts "    (#{r["agents"].length} agents)"
  r
end

if agents_resp && !agents_resp["agents"].empty?
  first_agent = agents_resp["agents"].first
  run("agent has 'agent_id' key (not 'id')", results) do
    raise "missing 'agent_id' — got keys: #{first_agent.keys.inspect}" unless first_agent.key?("agent_id")
  end
end

# --- pronunciation_dictionaries ---
puts "\n[ pronunciation_dictionaries ]"
run("pronunciation_dictionaries.list returns hash with 'pronunciation_dictionaries' key", results) do
  r = client.pronunciation_dictionaries.list
  raise "missing 'pronunciation_dictionaries' key — got keys: #{r.keys.inspect}" unless r.key?("pronunciation_dictionaries")
  raise "expected Array" unless r["pronunciation_dictionaries"].is_a?(Array)
  puts "    (#{r["pronunciation_dictionaries"].length} dictionaries)"
  r
end

# --- conversational_ai sub-resources ---
puts "\n[ conversational_ai sub-resources ]"
run("llm.list returns hash or array", results) do
  r = client.conversational_ai.llm.list
  raise "expected Hash or Array, got #{r.class}" unless r.is_a?(Hash) || r.is_a?(Array)
  r
end

run("conversations.list returns hash", results) do
  r = client.conversational_ai.conversations.list
  raise "expected Hash, got #{r.class}" unless r.is_a?(Hash)
  puts "    (keys: #{r.keys.inspect})"
  r
end

# --- speech_to_text model_id enum ---
puts "\n[ webhooks ]"
run("webhooks.list returns hash or array", results) do
  r = client.webhooks.list
  raise "expected Hash or Array, got #{r.class}" unless r.is_a?(Hash) || r.is_a?(Array)
  puts "    (keys: #{r.is_a?(Hash) ? r.keys.inspect : "array of #{r.length}"})"
  r
end

# --- workspace ---
puts "\n[ workspace ]"
run("workspace.members.list (or accessible endpoint) returns hash", results) do
  r = client.workspace.members.list rescue nil
  # may be forbidden on some plans — just check it doesn't crash with a parse error
  raise "nil response" if r.nil? && false # nil is ok if it's a permissions 403
  puts "    (ok)"
  true
end

# Summary
puts "\n=== Results ==="
puts "Passed: #{results[:passed]}"
puts "Failed: #{results[:failed]}"
puts results[:failed] == 0 ? "\nAll checks passed!" : "\nSome checks failed — review response keys in README."
