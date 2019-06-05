# frozen_string_literal: true

class DashboardController < ApplicationController

  before_action :authenticate_user!
  before_action :favorite_cities_scope, only: %i[index]
  respond_to :html, :js

  def index
    search_weather
  end



  private

  def search_weather(city = params[:city])
    weather_service = WeatherApiService.new(city).request_weather
    @weather = WeatherPresenter.new(weather_service)
  end

  def favorite_cities_scope
    @cities = FavoriteCitiesQuery.new(current_user.id).search_names
    @weather_favorite_cities = @cities.map { |city| search_weather(city) }
  end
end
