# frozen_string_literal: true

class WeatherPresenter < SimpleDelegator
  attr_reader :weather

  def initialize(weather)
    @weather = weather
    @converter_weather = Weather.new
    __setobj__(weather)
  end

  def webservice_status
    @weather.is_a?(Hash) ? 'message_errors' : 'data_temperature'
  end

  def celsius_temperature
    @converter_weather.to_celsius(@weather.temperature)
  end

  def celsius_min_temperature
    @converter_weather.to_celsius(@weather.min_temperature)
  end

  def celsius_max_temperature
    @converter_weather.to_celsius(@weather.max_temperature)
  end
end
