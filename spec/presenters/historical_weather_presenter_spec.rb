# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HistoricalWeatherPresenter do
  subject(:instance) { described_class.new }

  describe '#readable_datatime' do
    before { create_list(:value_weather, 24) }

    context 'when ValueWeather is not empty' do
      let(:readable_datatime) { instance.readable_datatime }

      it 'has return all records' do
        expect(readable_datatime[0]).to eq([7.6, '2021-11-02 14:56:00 +0300'])
      end
    end
  end
end
