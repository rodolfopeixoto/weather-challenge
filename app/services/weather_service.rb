class WeatherService
  attr_reader :get_weather, :city, :units

  def initialize(city, units = 'imperial')
    @city = city
    @units = units
    @get_weather = get_weather
  end

  def request_weather
    Openweather2.get_weather(city: @city, units: @units)
  end
end
