# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MinWeatherPresenter do
  subject(:instance) { described_class.new }

  before do
    create(:value_weather)
    create(:value_weather, t_value: 3.6)
  end

  describe '#min_temperature' do
    context 'when ValueWeather is not empty' do
      let(:min_temperature) { instance.min_temperature }

      it 'has return all records' do
        expect(min_temperature).to eq([3.6, 1635854160])
      end
    end
  end

  describe '#readable_datatime' do
    context 'when ValueWeather is not empty' do
      let(:readable_datatime) { instance.readable_datatime }

      it 'has return human-readable datatime' do
        expect(readable_datatime).to eq([3.6, '2021-11-02 14:56:00 +0300'])
      end
    end
  end
end
