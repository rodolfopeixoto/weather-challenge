# frozen_string_literal: true

class Weather
  def to_celsius(weather_fahrenheit)
    calculate_celsius = ((weather_fahrenheit.to_i - 32) / 1.8).round(2)
    calculate_celsius.to_s
  end
end
