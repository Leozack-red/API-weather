# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CurrentWeatherPresenter do
  subject(:instance) { described_class.new }

  let(:fake_service) { class_double(WeatherLoaderService) }
  let(:record) { create(:value_weather) }

  before { record }

  describe '#update' do
    let(:update) { instance.update }

    before do
      allow(WeatherLoaderService).to receive(:call).and_return(fake_service)
      allow(fake_service).to receive(:call).and_return(record)
      update
    end

    context 'when ValueWeather in not empty' do
      it 'has return updated data', :vcr do
        expect(fake_service.call).to have_attributes(id: 1, t_value: 7.6, datatime: 1635854160)
      end
    end
  end

  describe '#current_weather' do
    let(:current_weather) { instance.current_weather }

    context 'when ValueWeather return correct records' do
      it 'has return first record with temperature and datatime', :vcr do
        expect(current_weather).to eq([[7.6, 1635854160]])
      end
    end
  end

  describe '#readable_datatime' do
    let(:readable_datatime) { instance.readable_datatime }

    context 'when current_weather return not nil' do
      it 'has return correct human-readable datatime', :vcr do
        expect(readable_datatime).to eq('2021-11-02 14:56:00 +0300')
      end
    end
  end
end
