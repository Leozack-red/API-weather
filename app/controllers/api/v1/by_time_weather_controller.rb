# frozen_string_literal: true

module Api
  module V1
    class ByTimeWeatherController < ApplicationController
      def index
        object = ByTimeWeatherPresenter.new(inputdatatime: params.permit('inputdatatime')['inputdatatime'])
        @by_time = object.readable_datatime
      end
    end
  end
end
