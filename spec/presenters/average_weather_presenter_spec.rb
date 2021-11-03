# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AverageWeatherPresenter do
  subject(:instance) { described_class.new }

  before { create_list(:value_weather, 24) }

  describe '#average_temperature' do
    context 'when ValueWeather is not empty' do
      let(:average_temperature) { instance.average_temperature }

      it 'has return all records' do
        expect(average_temperature).to eq(7.6)
      end
    end
  end
end
