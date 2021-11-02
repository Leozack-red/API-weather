# frozen_string_literal: true

require 'rest-client'
require 'json'

module Accuweather
  class Client
    URL = 'http://dataservice.accuweather.com/currentconditions/v1/295212/historical/24'

    def initialize(apikey)
      @apikey = apikey
    end

    def weather
      response = RestClient::Request.execute(method: :get,
                                             url: URL.to_s,
                                             headers: {
                                               params: { apikey: @apikey.to_s },
                                               content_type: :json, accept: :json
                                             })
      parse(response)
    end

    private

    def parse(response)
      response.code == 200 ? JSON.parse(response.body) : nil
    end
  end
end
