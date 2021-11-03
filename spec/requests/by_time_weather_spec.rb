# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ByTimeWeathers', type: :request do
  before { create(:value_weather) }

  describe 'GET /index' do
    it 'returns http success' do
      get '/api/v1/weather/by_time.json?inputdatatime=1635857670'
      expect(response).to have_http_status(:success)
    end
  end
end
