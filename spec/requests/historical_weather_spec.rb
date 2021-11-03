# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HistoricalWeathers', type: :request do
  describe 'GET /index' do
    it 'returns http success', :vcr do
      get '/api/v1/weather/historical.json'
      expect(response).to have_http_status(:success)
    end
  end
end
