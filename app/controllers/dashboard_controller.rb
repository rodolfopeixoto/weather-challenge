# frozen_string_literal: true

class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    search_weather

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def search_weather
    weather_service = WeatherApiService.new(params[:city]).request_weather
    @weather = WeatherPresenter.new(weather_service)
  end

  def favorite_cities_scope
    @favorite_cities = FavoriteCitiesQuery.new(current_user.id)
  end
end
