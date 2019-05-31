class CelsiusPresenter < TemperaturePresenter
  attr_reader :temperature, :min_temperature, :max_temperature

  def temperature
    super
    convert(@weather.temperature)
  end

  def min_temperature
    super
    convert(@weather.min_temperature)
  end

  def max_temperature
    super
    convert(@weather.max_temperature)
  end

private

  def convert(weather)
    ((weather - 32) / 1.8).floor
  end
end
