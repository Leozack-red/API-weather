# frozen_string_literal: true

desc 'Load data of weather from AccWeather API'

task weather: :environment do
  WeatherLoaderService.call
end
