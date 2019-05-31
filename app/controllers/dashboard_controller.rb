class DashboardController < ApplicationController
  def index
    weather_service = WeatherService.new('Sao Paulo,BR')
    @weather = weather_service.request_weather
    @fahrenheit = FahrenheitPresenter.new(@weather)
    @celsius = CelsiusPresenter.new(@weather)
  end
end
