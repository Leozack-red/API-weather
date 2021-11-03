# frozen_string_literal: true

class ByTimeWeatherPresenter
  attr_reader :inputdatatime

  def initialize(inputdatatime: 1635857670)
    @inputdatatime = inputdatatime.to_i
  end

  def approximate_time
    if (inputdatatime > query_temp.min) && (inputdatatime < query_temp.max)
      array_mod = query_temp.map do |datatime|
        (datatime - inputdatatime).abs
      end
      array_mod.index(array_mod.min)
    end
  end

  def query_approximation
    ValueWeather.pluck(:t_value, :datatime)[approximate_time]
  end

  def readable_datatime
    array_by_time = query_approximation
    array_by_time[1] = Time.at(query_approximation[1]).in_time_zone('Moscow').to_s if query_approximation.present?
    array_by_time
  end

  private

  def query_temp
    ValueWeather.pluck(:datatime).flatten
  end
end
