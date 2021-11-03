Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'current_weather#index'
      resources :current_weather, only: %i[index], path: 'weather/current'
      resources :historical_weather, only: %i[index], path: 'weather/historical'
      resources :max_weather, only: %i[index], path: 'weather/historical/max'
    end
  end
end
