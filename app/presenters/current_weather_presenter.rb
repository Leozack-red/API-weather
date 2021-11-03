# frozen_string_literal: true

class CurrentWeatherPresenter
  def update
    ValueWeather.delete_all
    WeatherLoaderService.call
  end

  def current_weather
    ValueWeather.pluck(:t_value, :datatime)
  end

  def readable_datatime
    Time.at(current_weather[0][1]).in_time_zone('Moscow').to_s if current_weather.present?
  end
end
