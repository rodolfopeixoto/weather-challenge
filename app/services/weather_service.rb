class WeatherService

  def initialize(city, units = 'imperial')
    @city = city
    @units = units
  end

  def request_weather
    Openweather2.get_weather(city: @city, units: @units)
  end
end
