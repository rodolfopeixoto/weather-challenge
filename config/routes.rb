Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
       get '/forecast', to: 'forecasts#show'
    end
  end
  root 'dashboard#index'
  get 'dashboard/index'

      # get '/forecast?city=:city', to: 'forecasts#index'
end
