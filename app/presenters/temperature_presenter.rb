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

  def to_celsius(weather)
    ((weather - 32) / 1.8).floor
  end
end
