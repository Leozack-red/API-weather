# frozen_string_literal: true

module Api
  module V1
    class MinWeatherController < ApplicationController
      def index
        @min_temperature = MinWeatherPresenter.new.readable_datatime
      end
    end
  end
end
