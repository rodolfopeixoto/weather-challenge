# frozen_string_literal: true

class DashboardController < ApplicationController

  before_action :authenticate_user!
  before_action :search_weather, only: %i[index]
  before_action :favorite_cities_scope, only: %i[index]
  respond_to :html, :js

  def index
  end


  def search_weather(city = params[:city])
    weather_service = WeatherApiService.new(city).request_weather
    @weather = WeatherPresenter.new(weather_service)
  end

  private

  def favorite_cities_scope
    @cities = FavoriteCitiesQuery.new(current_user.id).search_names
    @weather_favorite_cities = FavoriteCitiesQuery.new(current_user.id)
  end
end
