# frozen_string_literal: true

class DashboardController < ApplicationController

  include Weatherable

  before_action :authenticate_user!
  before_action :favorite_cities_scope, only: %i[index]
  respond_to :html, :js

  def index
    @weather = search_weather
  end

end
