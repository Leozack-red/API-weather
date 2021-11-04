# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ByTimeWeathers', type: :request do
  before do
    create(:value_weather, datatime: 1636940560)
    create(:value_weather, datatime: 1636854160)
  end

  describe 'GET /index' do
    it 'returns http success' do
      get "/api/v1/weather/by_time.json?inputdatatime=#{ValueWeather.last.datatime + 10000}"
      expect(response).to have_http_status(:success)
    end
  end
end
