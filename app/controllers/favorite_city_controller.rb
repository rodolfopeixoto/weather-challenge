class FavoriteCityController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorite_city = FavoriteCity.all
  end

  def show
  end

  def new
    @favorite_city = FavoriteCity.new
    respond_to do |format|
      format.js
    end
  end

  def create
  end

  def destroy
    @favorite_city.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to favorite_cities_path  }
    end
  end

  private

  def set_favorite_city
    @favorite_city = FavoriteCity.find(params[:id])
  end

  def favorite_city_params
    params.require(:favorite_city).permit(:name)
  end
end
