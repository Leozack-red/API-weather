# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rendering the api template' do
  it 'displays the response' do
    render template: 'api/v1/current_weather/index.json.jbuilder', formats: :json, handler: :jbuilder
    expect(rendered).to eq('{"temperature":null,"datatime":null}')
  end
end
