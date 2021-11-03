Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      root 'current_weather#index'
      resources :current_weather, only: %i[index], path: 'weather/current'
    end
  end
end
