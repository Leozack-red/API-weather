Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'current_weather#index'
      resources :current_weather, only: %i[index], path: 'weather/current'
      resources :historical_weather, only: %i[index], path: 'weather/historical'
      resources :max_weather, only: %i[index], path: 'weather/historical/max'
      resources :min_weather, only: %i[index], path: 'weather/historical/min'
      resources :average_weather, only: %i[index], path: 'weather/historical/avg'
    end
  end
end
