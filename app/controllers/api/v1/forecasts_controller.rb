class Api::V1::ForecastsController < ApplicationController
  def show
    weather_service = WeatherApiService.new(params[:city]).request_weather
    @weather = WeatherPresenter.new(weather_service)
    render json: @weather
  end
end
