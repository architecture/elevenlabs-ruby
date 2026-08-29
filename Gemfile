source "https://rubygems.org"

gemspec

group :test do
  gem "minitest"
  # Bundled rather than default as of Ruby 4.0, so it has to be declared; the
  # HTTP client tests use it to stand in for Faraday's request object.
  gem "ostruct"
  gem "rake"
end
