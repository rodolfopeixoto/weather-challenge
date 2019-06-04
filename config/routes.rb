# frozen_string_literal: true

Rails.application.routes.draw do
  get 'dashboard/index'

  resources :favorite_cities, only: %i[new create destroy]

  root 'dashboard#index'

  devise_for :users

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'forecasts#show'
    end
  end
end
