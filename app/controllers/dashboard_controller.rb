# frozen_string_literal: true

class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    weather_service = WeatherApiService.new(params[:city]).request_weather
    @weather = WeatherPresenter.new(weather_service)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
