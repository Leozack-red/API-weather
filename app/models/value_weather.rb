# frozen_string_literal: true

class ValueWeather < ApplicationRecord
  validates :t_value, presence: true
  validates :datatime, presence: true
end
