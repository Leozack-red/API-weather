# frozen_string_literal: true

class WeatherLoaderService
  class << self
    def call
      client = Accuweather::Client.new(Rails.application.credentials.apikey)
      client.weather.each do |one_hour|
        ValueWeather.where(datatime: one_hour['EpochTime'])
                    .first_or_create(t_value: one_hour.dig('Temperature', 'Metric', 'Value'))
      end
    end
  end
end
