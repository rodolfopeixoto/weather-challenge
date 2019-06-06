# frozen_string_literal: true

Openweather2.configure do |config|
  config.endpoint = ENV['OPEN_WEATHER2_END_POINT']
  config.apikey = ENV['OPEN_WEATHER2_API_KEY']
end
