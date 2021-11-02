# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Accuweather::Client do
  subject(:instance) do
    described_class.new(Rails.application.credentials.apikey)
  end

  describe '#weather' do
    let(:weather) { instance.weather }

    context 'when response with weather data' do
      it 'has all weather characteristic values if there is an response is correct', :vcr do
        expect(weather[0].keys).to include('EpochTime', 'Temperature')
      end
    end
  end
end
