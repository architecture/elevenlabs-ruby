# ElevenLabs Ruby SDK — API Coverage Report

**Generated:** 2026-04-23
**Ruby SDK Version:** 0.6.0
**Python SDK Version:** 2.44.0 (upstream source)
**Endpoints in Ruby SDK:** 279
**Streaming Endpoints:** 26

---

## Executive Summary

The Ruby SDK dynamically generates all resource classes and methods from `spec.json`, which is extracted from the upstream Python SDK. **Every operation in the spec is automatically implemented** — there is no selective or hand-written endpoint code. Coverage of the upstream Python SDK is therefore always 100%.

- **279 endpoints implemented** (up from 268 in v0.5.0; +11 new in v0.6.0)
- **26 endpoints support streaming responses**
- **1 endpoint exists in the SDK but not the public OpenAPI spec** (`save_a_voice_preview`)
- **0 endpoints missing relative to the upstream Python SDK**

### New in v0.6.0 (vs v0.5.0)

- `conversational_ai.conversations.topics.get`
- `conversational_ai.knowledge_base.search`
- `conversational_ai.secrets.get`
- `conversational_ai.secrets.get_dependencies`
- `conversational_ai.tests.move`
- `conversational_ai.tests.folders.create`
- `conversational_ai.tests.folders.get`
- `conversational_ai.tests.folders.update`
- `conversational_ai.tests.folders.delete`
- `conversational_ai.tools.executions.get`
- `workspace.usage.get_usage_by_product_over_time`

Previously-missing category (ConvAI test folder management) is now fully covered.

---

## Implemented Endpoints (279 total)

### Top-Level Operations (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `save_a_voice_preview` | POST | `/v1/text-to-voice/create-voice-from-preview` |  |

### audio_isolation (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `audio_isolation.convert` | POST | `/v1/audio-isolation` | Yes |
| `audio_isolation.stream` | POST | `/v1/audio-isolation/stream` | Yes |

### audio_native (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `audio_native.create` | POST | `/v1/audio-native` |  |
| `audio_native.get_settings` | GET | `/v1/audio-native/{project_id}/settings` |  |
| `audio_native.update` | POST | `/v1/audio-native/{project_id}/content` |  |
| `audio_native.update_content_from_url` | POST | `/v1/audio-native/content` |  |

### conversational_ai (127)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversational_ai.add_to_knowledge_base` | POST | `/v1/convai/knowledge-base` |  |
| `conversational_ai.rag_index_overview` | GET | `/v1/convai/knowledge-base/rag-index` |  |
| `conversational_ai.get_document_rag_indexes` | GET | `/v1/convai/knowledge-base/{documentation_id}/rag-index` |  |
| `conversational_ai.delete_document_rag_index` | DELETE | `/v1/convai/knowledge-base/{documentation_id}/rag-index/{rag_index_id}` |  |

#### conversational_ai.agents (9)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.create` | POST | `/v1/convai/agents/create` |  |
| `agents.get` | GET | `/v1/convai/agents/{agent_id}` |  |
| `agents.delete` | DELETE | `/v1/convai/agents/{agent_id}` |  |
| `agents.update` | PATCH | `/v1/convai/agents/{agent_id}` |  |
| `agents.list` | GET | `/v1/convai/agents` |  |
| `agents.duplicate` | POST | `/v1/convai/agents/{agent_id}/duplicate` |  |
| `agents.simulate_conversation` | POST | `/v1/convai/agents/{agent_id}/simulate-conversation` |  |
| `agents.simulate_conversation_stream` | POST | `/v1/convai/agents/{agent_id}/simulate-conversation/stream` |  |
| `agents.run_tests` | POST | `/v1/convai/agents/{agent_id}/run-tests` |  |

#### conversational_ai.agents.branches (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.branches.list` | GET | `/v1/convai/agents/{agent_id}/branches` |  |
| `agents.branches.create` | POST | `/v1/convai/agents/{agent_id}/branches` |  |
| `agents.branches.get` | GET | `/v1/convai/agents/{agent_id}/branches/{branch_id}` |  |
| `agents.branches.update` | PATCH | `/v1/convai/agents/{agent_id}/branches/{branch_id}` |  |
| `agents.branches.merge` | POST | `/v1/convai/agents/{agent_id}/branches/{source_branch_id}/merge` |  |

#### conversational_ai.agents.deployments (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.deployments.create` | POST | `/v1/convai/agents/{agent_id}/deployments` |  |

#### conversational_ai.agents.drafts (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.drafts.create` | POST | `/v1/convai/agents/{agent_id}/drafts` |  |
| `agents.drafts.delete` | DELETE | `/v1/convai/agents/{agent_id}/drafts` |  |

#### conversational_ai.agents.knowledge_base (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.knowledge_base.size` | GET | `/v1/convai/agent/{agent_id}/knowledge-base/size` |  |

#### conversational_ai.agents.link (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.link.get` | GET | `/v1/convai/agents/{agent_id}/link` |  |

#### conversational_ai.agents.llm_usage (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.llm_usage.calculate` | POST | `/v1/convai/agent/{agent_id}/llm-usage/calculate` |  |

#### conversational_ai.agents.summaries (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.summaries.get` | GET | `/v1/convai/agents/summaries` |  |

#### conversational_ai.agents.widget (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.widget.get` | GET | `/v1/convai/agents/{agent_id}/widget` |  |

#### conversational_ai.agents.widget.avatar (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `agents.widget.avatar.create` | POST | `/v1/convai/agents/{agent_id}/avatar` |  |

#### conversational_ai.analytics.live_count (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `analytics.live_count.get` | GET | `/v1/convai/analytics/live-count` |  |

#### conversational_ai.batch_calls (6)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `batch_calls.create` | POST | `/v1/convai/batch-calling/submit` |  |
| `batch_calls.list` | GET | `/v1/convai/batch-calling/workspace` |  |
| `batch_calls.get` | GET | `/v1/convai/batch-calling/{batch_id}` |  |
| `batch_calls.delete` | DELETE | `/v1/convai/batch-calling/{batch_id}` |  |
| `batch_calls.cancel` | POST | `/v1/convai/batch-calling/{batch_id}/cancel` |  |
| `batch_calls.retry` | POST | `/v1/convai/batch-calling/{batch_id}/retry` |  |

#### conversational_ai.conversations (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.get_signed_url` | GET | `/v1/convai/conversation/get-signed-url` |  |
| `conversations.get_webrtc_token` | GET | `/v1/convai/conversation/token` |  |
| `conversations.list` | GET | `/v1/convai/conversations` |  |
| `conversations.get` | GET | `/v1/convai/conversations/{conversation_id}` |  |
| `conversations.delete` | DELETE | `/v1/convai/conversations/{conversation_id}` |  |

#### conversational_ai.conversations.analysis (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.analysis.run` | POST | `/v1/convai/conversations/{conversation_id}/analysis/run` |  |

#### conversational_ai.conversations.audio (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.audio.get` | GET | `/v1/convai/conversations/{conversation_id}/audio` | Yes |

#### conversational_ai.conversations.feedback (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.feedback.create` | POST | `/v1/convai/conversations/{conversation_id}/feedback` |  |

#### conversational_ai.conversations.files (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.files.create` | POST | `/v1/convai/conversations/{conversation_id}/files` |  |
| `conversations.files.delete` | DELETE | `/v1/convai/conversations/{conversation_id}/files/{file_id}` |  |

#### conversational_ai.conversations.messages (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.messages.text_search` | GET | `/v1/convai/conversations/messages/text-search` |  |
| `conversations.messages.search` | GET | `/v1/convai/conversations/messages/smart-search` |  |

#### conversational_ai.conversations.topics (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `conversations.topics.get` | GET | `/v1/convai/agents/{agent_id}/topics` |  |

#### conversational_ai.dashboard.settings (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `dashboard.settings.get` | GET | `/v1/convai/settings/dashboard` |  |
| `dashboard.settings.update` | PATCH | `/v1/convai/settings/dashboard` |  |

#### conversational_ai.knowledge_base (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `knowledge_base.list` | GET | `/v1/convai/knowledge-base` |  |
| `knowledge_base.get_or_create_rag_indexes` | POST | `/v1/convai/knowledge-base/rag-index` |  |
| `knowledge_base.search` | GET | `/v1/convai/knowledge-base/search` |  |

#### conversational_ai.knowledge_base.document (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `knowledge_base.document.refresh` | POST | `/v1/convai/knowledge-base/{documentation_id}/refresh` |  |
| `knowledge_base.document.compute_rag_index` | POST | `/v1/convai/knowledge-base/{documentation_id}/rag-index` |  |

#### conversational_ai.knowledge_base.documents (12)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `knowledge_base.documents.create_from_url` | POST | `/v1/convai/knowledge-base/url` |  |
| `knowledge_base.documents.create_from_file` | POST | `/v1/convai/knowledge-base/file` |  |
| `knowledge_base.documents.create_from_text` | POST | `/v1/convai/knowledge-base/text` |  |
| `knowledge_base.documents.create_folder` | POST | `/v1/convai/knowledge-base/folder` |  |
| `knowledge_base.documents.get` | GET | `/v1/convai/knowledge-base/{documentation_id}` |  |
| `knowledge_base.documents.delete` | DELETE | `/v1/convai/knowledge-base/{documentation_id}` |  |
| `knowledge_base.documents.update` | PATCH | `/v1/convai/knowledge-base/{documentation_id}` |  |
| `knowledge_base.documents.get_agents` | GET | `/v1/convai/knowledge-base/{documentation_id}/dependent-agents` |  |
| `knowledge_base.documents.get_content` | GET | `/v1/convai/knowledge-base/{documentation_id}/content` |  |
| `knowledge_base.documents.get_source_file_url` | GET | `/v1/convai/knowledge-base/{documentation_id}/source-file-url` |  |
| `knowledge_base.documents.move` | POST | `/v1/convai/knowledge-base/{document_id}/move` |  |
| `knowledge_base.documents.bulk_move` | POST | `/v1/convai/knowledge-base/bulk-move` |  |

#### conversational_ai.knowledge_base.documents.chunk (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `knowledge_base.documents.chunk.get` | GET | `/v1/convai/knowledge-base/{documentation_id}/chunk/{chunk_id}` |  |

#### conversational_ai.knowledge_base.documents.summaries (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `knowledge_base.documents.summaries.get` | GET | `/v1/convai/knowledge-base/summaries` |  |

#### conversational_ai.llm (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `llm.list` | GET | `/v1/convai/llm/list` |  |

#### conversational_ai.llm_usage (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `llm_usage.calculate` | POST | `/v1/convai/llm-usage/calculate` |  |

#### conversational_ai.mcp_servers (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `mcp_servers.list` | GET | `/v1/convai/mcp-servers` |  |
| `mcp_servers.create` | POST | `/v1/convai/mcp-servers` |  |
| `mcp_servers.get` | GET | `/v1/convai/mcp-servers/{mcp_server_id}` |  |
| `mcp_servers.delete` | DELETE | `/v1/convai/mcp-servers/{mcp_server_id}` |  |
| `mcp_servers.update` | PATCH | `/v1/convai/mcp-servers/{mcp_server_id}` |  |

#### conversational_ai.mcp_servers.approval_policy (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `mcp_servers.approval_policy.update` | PATCH | `/v1/convai/mcp-servers/{mcp_server_id}/approval-policy` |  |

#### conversational_ai.mcp_servers.tool_approvals (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `mcp_servers.tool_approvals.create` | POST | `/v1/convai/mcp-servers/{mcp_server_id}/tool-approvals` |  |
| `mcp_servers.tool_approvals.delete` | DELETE | `/v1/convai/mcp-servers/{mcp_server_id}/tool-approvals/{tool_name}` |  |

#### conversational_ai.mcp_servers.tool_configs (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `mcp_servers.tool_configs.create` | POST | `/v1/convai/mcp-servers/{mcp_server_id}/tool-configs` |  |
| `mcp_servers.tool_configs.get` | GET | `/v1/convai/mcp-servers/{mcp_server_id}/tool-configs/{tool_name}` |  |
| `mcp_servers.tool_configs.delete` | DELETE | `/v1/convai/mcp-servers/{mcp_server_id}/tool-configs/{tool_name}` |  |
| `mcp_servers.tool_configs.update` | PATCH | `/v1/convai/mcp-servers/{mcp_server_id}/tool-configs/{tool_name}` |  |

#### conversational_ai.mcp_servers.tools (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `mcp_servers.tools.list` | GET | `/v1/convai/mcp-servers/{mcp_server_id}/tools` |  |

#### conversational_ai.phone_numbers (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `phone_numbers.list` | GET | `/v1/convai/phone-numbers` |  |
| `phone_numbers.create` | POST | `/v1/convai/phone-numbers` |  |
| `phone_numbers.get` | GET | `/v1/convai/phone-numbers/{phone_number_id}` |  |
| `phone_numbers.delete` | DELETE | `/v1/convai/phone-numbers/{phone_number_id}` |  |
| `phone_numbers.update` | PATCH | `/v1/convai/phone-numbers/{phone_number_id}` |  |

#### conversational_ai.secrets (6)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `secrets.list` | GET | `/v1/convai/secrets` |  |
| `secrets.create` | POST | `/v1/convai/secrets` |  |
| `secrets.get` | GET | `/v1/convai/secrets/{secret_id}` |  |
| `secrets.delete` | DELETE | `/v1/convai/secrets/{secret_id}` |  |
| `secrets.update` | PATCH | `/v1/convai/secrets/{secret_id}` |  |
| `secrets.get_dependencies` | GET | `/v1/convai/secrets/{secret_id}/dependencies/{resource_type}` |  |

#### conversational_ai.settings (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `settings.get` | GET | `/v1/convai/settings` |  |
| `settings.update` | PATCH | `/v1/convai/settings` |  |

#### conversational_ai.sip_trunk (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `sip_trunk.outbound_call` | POST | `/v1/convai/sip-trunk/outbound-call` |  |

#### conversational_ai.tests (7)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `tests.create` | POST | `/v1/convai/agent-testing/create` |  |
| `tests.move` | POST | `/v1/convai/agent-testing/bulk-move` |  |
| `tests.get` | GET | `/v1/convai/agent-testing/{test_id}` |  |
| `tests.update` | PUT | `/v1/convai/agent-testing/{test_id}` |  |
| `tests.delete` | DELETE | `/v1/convai/agent-testing/{test_id}` |  |
| `tests.summaries` | POST | `/v1/convai/agent-testing/summaries` |  |
| `tests.list` | GET | `/v1/convai/agent-testing` |  |

#### conversational_ai.tests.folders (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `tests.folders.create` | POST | `/v1/convai/agent-testing/folders` |  |
| `tests.folders.get` | GET | `/v1/convai/agent-testing/folders/{folder_id}` |  |
| `tests.folders.delete` | DELETE | `/v1/convai/agent-testing/folders/{folder_id}` |  |
| `tests.folders.update` | PATCH | `/v1/convai/agent-testing/folders/{folder_id}` |  |

#### conversational_ai.tests.invocations (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `tests.invocations.list` | GET | `/v1/convai/test-invocations` |  |
| `tests.invocations.get` | GET | `/v1/convai/test-invocations/{test_invocation_id}` |  |
| `tests.invocations.resubmit` | POST | `/v1/convai/test-invocations/{test_invocation_id}/resubmit` |  |

#### conversational_ai.tools (6)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `tools.list` | GET | `/v1/convai/tools` |  |
| `tools.create` | POST | `/v1/convai/tools` |  |
| `tools.get` | GET | `/v1/convai/tools/{tool_id}` |  |
| `tools.delete` | DELETE | `/v1/convai/tools/{tool_id}` |  |
| `tools.update` | PATCH | `/v1/convai/tools/{tool_id}` |  |
| `tools.get_dependent_agents` | GET | `/v1/convai/tools/{tool_id}/dependent-agents` |  |

#### conversational_ai.tools.executions (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `tools.executions.get` | GET | `/v1/convai/tools/{tool_id}/executions` |  |

#### conversational_ai.twilio (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `twilio.outbound_call` | POST | `/v1/convai/twilio/outbound-call` |  |
| `twilio.register_call` | POST | `/v1/convai/twilio/register-call` |  |

#### conversational_ai.users (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `users.list` | GET | `/v1/convai/users` |  |

#### conversational_ai.whatsapp (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `whatsapp.outbound_call` | POST | `/v1/convai/whatsapp/outbound-call` |  |
| `whatsapp.outbound_message` | POST | `/v1/convai/whatsapp/outbound-message` |  |

#### conversational_ai.whatsapp_accounts (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `whatsapp_accounts.get` | GET | `/v1/convai/whatsapp-accounts/{phone_number_id}` |  |
| `whatsapp_accounts.delete` | DELETE | `/v1/convai/whatsapp-accounts/{phone_number_id}` |  |
| `whatsapp_accounts.update` | PATCH | `/v1/convai/whatsapp-accounts/{phone_number_id}` |  |
| `whatsapp_accounts.list` | GET | `/v1/convai/whatsapp-accounts` |  |

### dubbing (20)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `dubbing.list` | GET | `/v1/dubbing` |  |
| `dubbing.create` | POST | `/v1/dubbing` |  |
| `dubbing.get` | GET | `/v1/dubbing/{dubbing_id}` |  |
| `dubbing.delete` | DELETE | `/v1/dubbing/{dubbing_id}` |  |

#### dubbing.audio (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `audio.get` | GET | `/v1/dubbing/{dubbing_id}/audio/{language_code}` | Yes |

#### dubbing.resource (6)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resource.get` | GET | `/v1/dubbing/resource/{dubbing_id}` |  |
| `resource.migrate_segments` | POST | `/v1/dubbing/resource/{dubbing_id}/migrate-segments` |  |
| `resource.transcribe` | POST | `/v1/dubbing/resource/{dubbing_id}/transcribe` |  |
| `resource.translate` | POST | `/v1/dubbing/resource/{dubbing_id}/translate` |  |
| `resource.dub` | POST | `/v1/dubbing/resource/{dubbing_id}/dub` |  |
| `resource.render` | POST | `/v1/dubbing/resource/{dubbing_id}/render/{language}` |  |

#### dubbing.resource.language (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resource.language.add` | POST | `/v1/dubbing/resource/{dubbing_id}/language` |  |

#### dubbing.resource.segment (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resource.segment.update` | PATCH | `/v1/dubbing/resource/{dubbing_id}/segment/{segment_id}/{language}` |  |
| `resource.segment.delete` | DELETE | `/v1/dubbing/resource/{dubbing_id}/segment/{segment_id}` |  |

#### dubbing.resource.speaker (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resource.speaker.update` | PATCH | `/v1/dubbing/resource/{dubbing_id}/speaker/{speaker_id}` |  |
| `resource.speaker.create` | POST | `/v1/dubbing/resource/{dubbing_id}/speaker` |  |
| `resource.speaker.find_similar_voices` | GET | `/v1/dubbing/resource/{dubbing_id}/speaker/{speaker_id}/similar-voices` |  |

#### dubbing.resource.speaker.segment (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resource.speaker.segment.create` | POST | `/v1/dubbing/resource/{dubbing_id}/speaker/{speaker_id}/segment` |  |

#### dubbing.transcript (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `transcript.get_transcript_for_dub` | GET | `/v1/dubbing/{dubbing_id}/transcript/{language_code}` |  |

#### dubbing.transcripts (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `transcripts.get` | GET | `/v1/dubbing/{dubbing_id}/transcripts/{language_code}/format/{format_type}` |  |

### environment_variables (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `environment_variables.list` | GET | `/v1/convai/environment-variables` |  |
| `environment_variables.create` | POST | `/v1/convai/environment-variables` |  |
| `environment_variables.get` | GET | `/v1/convai/environment-variables/{env_var_id}` |  |
| `environment_variables.update` | PATCH | `/v1/convai/environment-variables/{env_var_id}` |  |

### forced_alignment (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `forced_alignment.create` | POST | `/v1/forced-alignment` |  |

### history (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `history.list` | GET | `/v1/history` |  |
| `history.get` | GET | `/v1/history/{history_item_id}` |  |
| `history.delete` | DELETE | `/v1/history/{history_item_id}` |  |
| `history.get_audio` | GET | `/v1/history/{history_item_id}/audio` | Yes |
| `history.download` | POST | `/v1/history/download` | Yes |

### models (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `models.list` | GET | `/v1/models` |  |

### music (7)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `music.video_to_music` | POST | `/v1/music/video-to-music` | Yes |
| `music.compose` | POST | `/v1/music` | Yes |
| `music.compose_detailed` | POST | `/v1/music/detailed` | Yes |
| `music.stream` | POST | `/v1/music/stream` | Yes |
| `music.upload` | POST | `/v1/music/upload` |  |
| `music.separate_stems` | POST | `/v1/music/stem-separation` | Yes |

#### music.composition_plan (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `composition_plan.create` | POST | `/v1/music/plan` |  |

### pronunciation_dictionaries (9)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pronunciation_dictionaries.create_from_file` | POST | `/v1/pronunciation-dictionaries/add-from-file` |  |
| `pronunciation_dictionaries.create_from_rules` | POST | `/v1/pronunciation-dictionaries/add-from-rules` |  |
| `pronunciation_dictionaries.get` | GET | `/v1/pronunciation-dictionaries/{pronunciation_dictionary_id}` |  |
| `pronunciation_dictionaries.update` | PATCH | `/v1/pronunciation-dictionaries/{pronunciation_dictionary_id}` |  |
| `pronunciation_dictionaries.download` | GET | `/v1/pronunciation-dictionaries/{dictionary_id}/{version_id}/download` | Yes |
| `pronunciation_dictionaries.list` | GET | `/v1/pronunciation-dictionaries` |  |

#### pronunciation_dictionaries.rules (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `rules.set` | POST | `/v1/pronunciation-dictionaries/{pronunciation_dictionary_id}/set-rules` |  |
| `rules.add` | POST | `/v1/pronunciation-dictionaries/{pronunciation_dictionary_id}/add-rules` |  |
| `rules.remove` | POST | `/v1/pronunciation-dictionaries/{pronunciation_dictionary_id}/remove-rules` |  |

### samples (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `samples.delete` | DELETE | `/v1/voices/{voice_id}/samples/{sample_id}` |  |

### service_accounts (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `service_accounts.list` | GET | `/v1/service-accounts` |  |

#### service_accounts.api_keys (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `api_keys.list` | GET | `/v1/service-accounts/{service_account_user_id}/api-keys` |  |
| `api_keys.create` | POST | `/v1/service-accounts/{service_account_user_id}/api-keys` |  |
| `api_keys.delete` | DELETE | `/v1/service-accounts/{service_account_user_id}/api-keys/{api_key_id}` |  |
| `api_keys.update` | PATCH | `/v1/service-accounts/{service_account_user_id}/api-keys/{api_key_id}` |  |

### speech_to_speech (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `speech_to_speech.convert` | POST | `/v1/speech-to-speech/{voice_id}` | Yes |
| `speech_to_speech.stream` | POST | `/v1/speech-to-speech/{voice_id}/stream` | Yes |

### speech_to_text (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `speech_to_text.convert` | POST | `/v1/speech-to-text` |  |

#### speech_to_text.transcripts (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `transcripts.get` | GET | `/v1/speech-to-text/transcripts/{transcription_id}` |  |
| `transcripts.delete` | DELETE | `/v1/speech-to-text/transcripts/{transcription_id}` |  |

### studio (23)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `studio.create_podcast` | POST | `/v1/studio/podcasts` |  |

#### studio.projects (7)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.list` | GET | `/v1/studio/projects` |  |
| `projects.create` | POST | `/v1/studio/projects` |  |
| `projects.get` | GET | `/v1/studio/projects/{project_id}` |  |
| `projects.update` | POST | `/v1/studio/projects/{project_id}` |  |
| `projects.delete` | DELETE | `/v1/studio/projects/{project_id}` |  |
| `projects.convert` | POST | `/v1/studio/projects/{project_id}/convert` |  |
| `projects.get_muted_tracks` | GET | `/v1/studio/projects/{project_id}/muted-tracks` |  |

#### studio.projects.chapters (6)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.chapters.list` | GET | `/v1/studio/projects/{project_id}/chapters` |  |
| `projects.chapters.create` | POST | `/v1/studio/projects/{project_id}/chapters` |  |
| `projects.chapters.get` | GET | `/v1/studio/projects/{project_id}/chapters/{chapter_id}` |  |
| `projects.chapters.update` | POST | `/v1/studio/projects/{project_id}/chapters/{chapter_id}` |  |
| `projects.chapters.delete` | DELETE | `/v1/studio/projects/{project_id}/chapters/{chapter_id}` |  |
| `projects.chapters.convert` | POST | `/v1/studio/projects/{project_id}/chapters/{chapter_id}/convert` |  |

#### studio.projects.chapters.snapshots (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.chapters.snapshots.list` | GET | `/v1/studio/projects/{project_id}/chapters/{chapter_id}/snapshots` |  |
| `projects.chapters.snapshots.get` | GET | `/v1/studio/projects/{project_id}/chapters/{chapter_id}/snapshots/{chapter_snapshot_id}` |  |
| `projects.chapters.snapshots.stream` | POST | `/v1/studio/projects/{project_id}/chapters/{chapter_id}/snapshots/{chapter_snapshot_id}/stream` | Yes |

#### studio.projects.content (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.content.update` | POST | `/v1/studio/projects/{project_id}/content` |  |

#### studio.projects.pronunciation_dictionaries (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.pronunciation_dictionaries.create` | POST | `/v1/studio/projects/{project_id}/pronunciation-dictionaries` |  |

#### studio.projects.snapshots (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `projects.snapshots.list` | GET | `/v1/studio/projects/{project_id}/snapshots` |  |
| `projects.snapshots.get` | GET | `/v1/studio/projects/{project_id}/snapshots/{project_snapshot_id}` |  |
| `projects.snapshots.stream` | POST | `/v1/studio/projects/{project_id}/snapshots/{project_snapshot_id}/stream` | Yes |
| `projects.snapshots.stream_archive` | POST | `/v1/studio/projects/{project_id}/snapshots/{project_snapshot_id}/archive` | Yes |

### text_to_dialogue (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `text_to_dialogue.convert` | POST | `/v1/text-to-dialogue` | Yes |
| `text_to_dialogue.stream` | POST | `/v1/text-to-dialogue/stream` | Yes |
| `text_to_dialogue.stream_with_timestamps` | POST | `/v1/text-to-dialogue/stream/with-timestamps` | Yes |
| `text_to_dialogue.convert_with_timestamps` | POST | `/v1/text-to-dialogue/with-timestamps` |  |

### text_to_sound_effects (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `text_to_sound_effects.convert` | POST | `/v1/sound-generation` | Yes |

### text_to_speech (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `text_to_speech.convert` | POST | `/v1/text-to-speech/{voice_id}` | Yes |
| `text_to_speech.convert_with_timestamps` | POST | `/v1/text-to-speech/{voice_id}/with-timestamps` |  |
| `text_to_speech.stream` | POST | `/v1/text-to-speech/{voice_id}/stream` | Yes |
| `text_to_speech.stream_with_timestamps` | POST | `/v1/text-to-speech/{voice_id}/stream/with-timestamps` | Yes |

### text_to_voice (5)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `text_to_voice.create_previews` | POST | `/v1/text-to-voice/create-previews` |  |
| `text_to_voice.create` | POST | `/v1/text-to-voice` |  |
| `text_to_voice.design` | POST | `/v1/text-to-voice/design` |  |
| `text_to_voice.remix` | POST | `/v1/text-to-voice/{voice_id}/remix` |  |

#### text_to_voice.preview (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `preview.stream` | GET | `/v1/text-to-voice/{generated_voice_id}/stream` | Yes |

### tokens (1)

#### tokens.single_use (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `single_use.create` | POST | `/v1/single-use-token/{token_type}` |  |

### usage (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `usage.get` | GET | `/v1/usage/character-stats` |  |

### user (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `user.get` | GET | `/v1/user` |  |

#### user.subscription (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `subscription.get` | GET | `/v1/user/subscription` |  |

### voices (27)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `voices.get_all` | GET | `/v1/voices` |  |
| `voices.search` | GET | `/v2/voices` |  |
| `voices.get` | GET | `/v1/voices/{voice_id}` |  |
| `voices.delete` | DELETE | `/v1/voices/{voice_id}` |  |
| `voices.update` | POST | `/v1/voices/{voice_id}/edit` |  |
| `voices.share` | POST | `/v1/voices/add/{public_user_id}/{voice_id}` |  |
| `voices.get_shared` | GET | `/v1/shared-voices` |  |
| `voices.find_similar_voices` | POST | `/v1/similar-voices` |  |

#### voices.ivc (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `ivc.create` | POST | `/v1/voices/add` |  |

#### voices.pvc (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.create` | POST | `/v1/voices/pvc` |  |
| `pvc.update` | POST | `/v1/voices/pvc/{voice_id}` |  |
| `pvc.train` | POST | `/v1/voices/pvc/{voice_id}/train` |  |

#### voices.pvc.samples (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.samples.create` | POST | `/v1/voices/pvc/{voice_id}/samples` |  |
| `pvc.samples.update` | POST | `/v1/voices/pvc/{voice_id}/samples/{sample_id}` |  |
| `pvc.samples.delete` | DELETE | `/v1/voices/pvc/{voice_id}/samples/{sample_id}` |  |

#### voices.pvc.samples.audio (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.samples.audio.get` | GET | `/v1/voices/pvc/{voice_id}/samples/{sample_id}/audio` |  |

#### voices.pvc.samples.speakers (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.samples.speakers.get` | GET | `/v1/voices/pvc/{voice_id}/samples/{sample_id}/speakers` |  |
| `pvc.samples.speakers.separate` | POST | `/v1/voices/pvc/{voice_id}/samples/{sample_id}/separate-speakers` |  |

#### voices.pvc.samples.speakers.audio (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.samples.speakers.audio.get` | GET | `/v1/voices/pvc/{voice_id}/samples/{sample_id}/speakers/{speaker_id}/audio` |  |

#### voices.pvc.samples.waveform (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.samples.waveform.get` | GET | `/v1/voices/pvc/{voice_id}/samples/{sample_id}/waveform` |  |

#### voices.pvc.verification (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.verification.request` | POST | `/v1/voices/pvc/{voice_id}/verification` |  |

#### voices.pvc.verification.captcha (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `pvc.verification.captcha.get` | GET | `/v1/voices/pvc/{voice_id}/captcha` |  |
| `pvc.verification.captcha.verify` | POST | `/v1/voices/pvc/{voice_id}/captcha` |  |

#### voices.samples.audio (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `samples.audio.get` | GET | `/v1/voices/{voice_id}/samples/{sample_id}/audio` | Yes |

#### voices.settings (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `settings.get_default` | GET | `/v1/voices/settings/default` |  |
| `settings.get` | GET | `/v1/voices/{voice_id}/settings` |  |
| `settings.update` | POST | `/v1/voices/{voice_id}/settings/edit` |  |

### webhooks (4)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `webhooks.list` | GET | `/v1/workspace/webhooks` |  |
| `webhooks.create` | POST | `/v1/workspace/webhooks` |  |
| `webhooks.delete` | DELETE | `/v1/workspace/webhooks/{webhook_id}` |  |
| `webhooks.update` | PATCH | `/v1/workspace/webhooks/{webhook_id}` |  |

### workspace (15)

#### workspace.auth_connections (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `auth_connections.list` | GET | `/v1/workspace/auth-connections` |  |
| `auth_connections.create` | POST | `/v1/workspace/auth-connections` |  |
| `auth_connections.delete` | DELETE | `/v1/workspace/auth-connections/{auth_connection_id}` |  |

#### workspace.groups (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `groups.list` | GET | `/v1/workspace/groups` |  |
| `groups.search` | GET | `/v1/workspace/groups/search` |  |

#### workspace.groups.members (2)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `groups.members.remove` | POST | `/v1/workspace/groups/{group_id}/members/remove` |  |
| `groups.members.add` | POST | `/v1/workspace/groups/{group_id}/members` |  |

#### workspace.invites (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `invites.create` | POST | `/v1/workspace/invites/add` |  |
| `invites.create_batch` | POST | `/v1/workspace/invites/add-bulk` |  |
| `invites.delete` | DELETE | `/v1/workspace/invites` |  |

#### workspace.members (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `members.update` | POST | `/v1/workspace/members` |  |

#### workspace.resources (3)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `resources.get` | GET | `/v1/workspace/resources/{resource_id}` |  |
| `resources.share` | POST | `/v1/workspace/resources/{resource_id}/share` |  |
| `resources.unshare` | POST | `/v1/workspace/resources/{resource_id}/unshare` |  |

#### workspace.usage (1)

| Operation | Method | Path | Streaming |
|-----------|--------|------|:---------:|
| `usage.get_usage_by_product_over_time` | POST | `/v1/workspace/analytics/query/usage-by-product-over-time` |  |

---

## Architecture Note

The Ruby SDK uses a **fully automatic, zero-filtering pass-through** of `spec.json`. Every namespace becomes a Ruby class, every operation becomes a Ruby method, and every parameter becomes a method argument. There is no hand-written resource code. If an operation exists in `spec.json`, it is callable from Ruby.

To track new upstream additions:
```bash
cd tmp-elevenlabs-python && git pull origin main && cd ..
python3 scripts/extract_spec.py
bundle exec rake test
```

See `docs/update-procedure.md` for the full release workflow.
