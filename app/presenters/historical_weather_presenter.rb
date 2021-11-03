# frozen_string_literal: true

class HistoricalWeatherPresenter
  def readable_datatime
    query.each do |one_hour|
      one_hour[1] = Time.at(one_hour[1]).in_time_zone('Moscow').to_s if ValueWeather.count <= 24
    end
  end

  private

  def query
    ValueWeather.pluck(:t_value, :datatime)
  end
end
