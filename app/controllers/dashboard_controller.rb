# frozen_string_literal: true

class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index
    city = favorite_cities_scope.name || params[:city]

    weather_service = WeatherApiService.new(city).request_weather

    @favorite_cities = FavoriteCity.all
    @weather = WeatherPresenter.new(weather_service)
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def favorite_cities_scope
    FavoriteCitiesQuery.new(current_user.id).first_city
  end
end
