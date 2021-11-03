# frozen_string_literal: true

class MinWeatherPresenter
  def readable_datatime
    array_min = min_temperature
    array_min[1] = Time.at(min_temperature[1]).in_time_zone('Moscow').to_s if min_temperature.present?
    array_min
  end

  def min_temperature
    query.min_by { |one_hour| one_hour[0] }
  end

  private

  def query
    ValueWeather.pluck(:t_value, :datatime)
  end
end
