# frozen_string_literal: true

module MartaApi
  module Utils
    MARTA_API_ROOT = ENV['MARTA_API_ROOT'] || 'http://developer.itsmarta.com'
    MARTA_API_KEY = ENV['MARTA_API_KEY'] || 'test-api-key'
    API_KEY_SUFFIX = '?apiKey=%s'
    GET_RAIL_SCHEDULE_ENDPOINT = '/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals'
    GET_ALL_BUS_SCHEDULES_ENDPOINT = '/BRDRestService/RestBusRealTimeService/GetAllBus'
    GET_BUS_SCHEDULE_BY_ROUTE_ENDPOINT = '/BRDRestService/RestBusRealTimeService/GetBusByRoute/%s'

    def api_key_param
      (API_KEY_SUFFIX % MARTA_API_KEY)
    end
  end
end
