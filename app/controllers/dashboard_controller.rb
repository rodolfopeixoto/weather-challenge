class DashboardController < ApplicationController
  def index
    weather_service = WeatherService.new(params[:city]).request_weather
    if weather_service.is_a?(Hash)
      @weather = weather_service
    else
      @weather = TemperaturePresenter.new(weather_service)
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
