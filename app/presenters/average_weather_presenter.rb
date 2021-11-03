# frozen_string_literal: true

class AverageWeatherPresenter
  def average_temperature
    (query.sum / query.size.to_f).round(1)
  end

  private

  def query
    ValueWeather.pluck(:t_value).flatten
  end
end
