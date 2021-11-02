# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ValueWeather, type: :model do
  let(:weather) { create(:value_weather) }

  context 'when object is valid' do
    it { expect(weather).to be_valid }
  end
end
