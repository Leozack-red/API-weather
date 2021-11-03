# frozen_string_literal: true

json.array! @historical_weather do |one_hour|
  json.temperature one_hour[0]
  json.datatime one_hour[1]
end
