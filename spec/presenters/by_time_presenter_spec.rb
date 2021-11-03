# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ByTimeWeatherPresenter do
  subject(:instance) { described_class.new }

  before do
    create(:value_weather)
    create(:value_weather, datatime: 1635858000)
  end

  describe '#approximate_time' do
    context 'when ValueWeather is not empty' do
      let(:approximate_time) { instance.approximate_time }

      it 'has return all records' do
        expect(approximate_time).to eq(1)
      end
    end
  end

  describe '#query_approximation' do
    context 'when ValueWeather is not empty' do
      let(:query_approximation) { instance.query_approximation }

      it 'has return all records' do
        expect(query_approximation).to eq([7.6, 1635858000])
      end
    end
  end

  describe '#readable_datatime' do
    context 'when ValueWeather is not empty' do
      let(:readable_datatime) { instance.readable_datatime }

      it 'has return human-readable datatime' do
        expect(readable_datatime).to eq([7.6, '2021-11-02 16:00:00 +0300'])
      end
    end
  end
end
