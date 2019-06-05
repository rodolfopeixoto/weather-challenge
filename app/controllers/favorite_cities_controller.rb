class FavoriteCitiesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_favorite_city, only: [:show, :destroy]

  skip_before_action :verify_authenticity_token

  def index
    @favorite_cities = FavoriteCity.all
  end

  def show
  end

  def new
    @favorite_city = FavoriteCity.new
  end

  def create
    @favorite_city = FavoriteCity.new(favorite_city_params)
    @favorite_city.user = current_user

    respond_to do |format|
      if @favorite_city.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @favorite_city.errors.full_messages,
                            status: :unprocessable_entity }
      end

    end
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
    params.require(:favorite_city).permit(:name, :user_id)
  end
end
