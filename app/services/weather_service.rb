class WeatherService
  def initialize(city, units = 'imperial')
    @city = city
    @units = units
  end

  def connect
    Openweather2.get_weather(city: @city, units: @units)
  end
end
