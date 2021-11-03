# frozen_string_literal: true

module Api
  module V1
    class CurrentWeatherController < ApplicationController
      def index
        CurrentWeatherPresenter.new.update
        @temperature = CurrentWeatherPresenter.new.current_weather[0][0]
        @readable_datatime = CurrentWeatherPresenter.new.readable_datatime
      end
    end
  end
end
