# frozen_string_literal: true

module Api
  module V1
    class ByTimeWeatherController < ApplicationController
      def index
        @by_time = ByTimeWeatherPresenter.new(inputdatatime: params.permit(:inputdatatime)[:inputdatatime])
                                         .readable_datatime
      end
    end
  end
end
