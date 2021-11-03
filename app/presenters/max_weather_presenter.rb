# frozen_string_literal: true

class MaxWeatherPresenter
  def readable_datatime
    array_max = max_temperature
    array_max[1] = Time.at(max_temperature[1]).in_time_zone('Moscow').to_s if max_temperature.present?
    array_max
  end

  def max_temperature
    query.max_by { |one_hour| one_hour[0] }
  end

  private

  def query
    ValueWeather.pluck(:t_value, :datatime)
  end
end
