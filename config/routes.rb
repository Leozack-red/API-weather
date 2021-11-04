Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'current_weather#index'
      resources :current_weather, only: %i[index], path: 'weather/current', defaults: { format: 'json' }
      resources :historical_weather, only: %i[index], path: 'weather/historical', defaults: { format: 'json' }
      resources :max_weather, only: %i[index], path: 'weather/historical/max', defaults: { format: 'json' }
      resources :min_weather, only: %i[index], path: 'weather/historical/min', defaults: { format: 'json' }
      resources :average_weather, only: %i[index], path: 'weather/historical/avg', defaults: { format: 'json' }
      resources :by_time_weather, only: %i[index], path: 'weather/by_time', defaults: { format: 'json' }
      resources :health_weather, only: %i[index], path: '/health', defaults: { format: 'json' }
    end
  end
end
