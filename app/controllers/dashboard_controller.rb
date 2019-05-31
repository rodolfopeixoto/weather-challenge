class DashboardController < ApplicationController
  def index
    weather_service = WeatherService.new('São Paulo,BR').request_weather
    @weather = TemperaturePresenter.new(weather_service)
  end
end
