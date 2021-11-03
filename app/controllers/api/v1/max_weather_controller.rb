# frozen_string_literal: true

module Api
  module V1
    class MaxWeatherController < ApplicationController
      def index
        @max_temperature = MaxWeatherPresenter.new.readable_datatime
      end
    end
  end
end
