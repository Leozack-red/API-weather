# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MaxWeatherPresenter do
  subject(:instance) { described_class.new }

  before { create_list(:value_weather, 24) }

  describe '#max_temperature' do
    context 'when ValueWeather is not empty' do
      let(:max_temperature) { instance.max_temperature }

      it 'has return all records' do
        expect(max_temperature).to eq([7.6, 1635854160])
      end
    end
  end

  describe '#readable_datatime' do
    context 'when ValueWeather is not empty' do
      let(:readable_datatime) { instance.readable_datatime }

      it 'has return human-readable datatime' do
        expect(readable_datatime).to eq([7.6, '2021-11-02 14:56:00 +0300'])
      end
    end
  end
end
