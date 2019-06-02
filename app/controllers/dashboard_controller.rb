class DashboardController < ApplicationController
  def index
    weather_service = WeatherService.new(params[:city]).request_weather
    @weather = TemperaturePresenter.new(weather_service)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
