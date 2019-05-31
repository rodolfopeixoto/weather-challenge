class TemperaturePresenter < SimpleDelegator
  def initialize(weather)
    @weather = weather
    __setobj__(weather)
  end

  def celsius_temperature
    to_celsius(@weather.temperature)
  end

  def celsius_min_temperature
    to_celsius(@weather.min_temperature)
  end

  def celsius_max_temperature
    to_celsius(@weather.max_temperature)
  end

  private
  def to_celsius(weather_fahrenheit)
    calculate_celsius = ((weather_fahrenheit.to_i - 32) / 1.8).round(2)
    calculate_celsius.to_s
  end
end
