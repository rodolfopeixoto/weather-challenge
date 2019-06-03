# frozen_string_literal: true

WebMock.disable_net_connect!

VCR.configure do |config|
  config.cassette_library_dir = 'spec/vcr'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.allow_http_connections_when_no_cassette = true
  config.default_cassette_options = {
    record: :once,
    match_requests_on: %i[method uri body]
  }
end
