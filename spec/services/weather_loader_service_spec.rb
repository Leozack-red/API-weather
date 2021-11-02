# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherLoaderService do
  subject(:call) { described_class.call }

  let(:fake_client) { instance_double(Accuweather::Client) }

  before do
    allow(Accuweather::Client).to receive(:new).and_return(fake_client)
    allow(fake_client).to receive(:weather).and_return([{ 'EpochTime' => 1635854160,
                                                          'Temperature' => {
                                                            'Metric' => {
                                                              'Value' => 5
                                                            }
                                                          } }])
  end

  context 'when client returns correct data of weather' do
    it 'adds new data of weather with correct attributes', :aggregate_failures do
      call
      expect(ValueWeather.count).to eq(1)
      expect(ValueWeather.last).to have_attributes(t_value: 5, datatime: 1635854160)
    end
  end

  context 'when client returns correct city with the already added city' do
    before { create(:value_weather, datatime: 1635854160) }

    it 'creates only correct city' do
      expect { call }.not_to change(ValueWeather, :count).from(1)
    end
  end
end
