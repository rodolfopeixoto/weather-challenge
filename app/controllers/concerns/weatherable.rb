module Weatherable
  include ActiveSupport::Concern

  def search_weather(city = params[:city])
    weather_service = WeatherApiService.new(city).request_weather
    WeatherPresenter.new(weather_service)
  end

  def favorite_cities_scope
    @weather_favorite_cities = cities.map { |city| search_weather(city) }
  end

  def cities
    FavoriteCitiesQuery.new(current_user.id).search_names
  end
end
