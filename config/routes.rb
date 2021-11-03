Rails.application.routes.draw do
  get 'historical_weather/index'
  namespace 'api' do
    namespace 'v1' do
      root 'current_weather#index'
      resources :current_weather, only: %i[index], path: 'weather/current'
      resources :historical_weather, only: %i[index], path: 'weather/historical'
    end
  end
end
