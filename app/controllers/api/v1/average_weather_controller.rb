# frozen_string_literal: true

module Api
  module V1
    class AverageWeatherController < ApplicationController
      def index
        @average_temperature = AverageWeatherPresenter.new.average_temperature
      end
    end
  end
end
