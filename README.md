# README

A small weather API that outputs the current value obtained through the AccuWeather service. The client is covered by rspec tests. Gems vcr and factory were used for testing. Data is loaded using the service object.
Endpoints for admission:

* /weather/current - Current temperature
* /weather/historical - Hourly temperature for the last 24 hours
* /weather/historical/max - Maximum temperature in 24 hours
* /weather/historical/min - Minimum temperature for 24 hours
* /weather/historical/avg - Average temperature for 24 hours
* /weather/by_time - Find the temperature closest to the transmitted timestamp
* /health - Backend status
