# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecasts#show'
    end
  end
  root 'dashboard#index'
  get 'dashboard/index'

  # get '/forecast?city=:city', to: 'forecasts#index'
end
