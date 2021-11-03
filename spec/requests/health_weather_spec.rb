require 'rails_helper'

RSpec.describe "HealthWeathers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/health.json"
      expect(response).to have_http_status(:success)
    end
  end

end
