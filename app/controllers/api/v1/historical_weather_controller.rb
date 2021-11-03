# frozen_string_literal: true

module Api
  module V1
    class HistoricalWeatherController < ApplicationController
      def index
        @historical_weather = HistoricalWeatherPresenter.new.readable_datatime
      end
    end
  end
end
