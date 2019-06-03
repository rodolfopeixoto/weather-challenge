class WeatherApiService

  def initialize(city, units = 'imperial')
    @city = city
    @units = units
  end

  def request_weather
    check_error_api
  end

  def connect_api
    @weather = Openweather2.get_weather(city: @city, units: @units)
  end

  def check_error_api
    begin
      connect_api
    rescue Openweather2::UnknownResponse
      @weather = { message: I18n.t('.errors.api.openweather2.UnknownResponse') }
    rescue Openweather2::UnprocessableError
      @weather = { message: I18n.t('.errors.api.openweather2.UnprocessableError') }
    end
  end
end
