# frozen_string_literal: true

require 'rest-client'
require 'json'

module MartaApi
  module Rest
    module Bus
      include MartaApi::Utils
      def get_bus_schedule
        url = MARTA_API_ROOT + GET_ALL_BUS_SCHEDULES_ENDPOINT + api_key_param
        response = RestClient.get url
        handle_response(response)
      end

      def get_bus_schedule_by_route(route_id)
        url = MARTA_API_ROOT + (GET_BUS_SCHEDULE_BY_ROUTE_ENDPOINT % route_id) + api_key_param
        response = RestClient.get url
        handle_response(response)
      end

      def handle_response(response)
        status_code = response.code
        unless (status_code > 199) && (status_code < 299)
          raise MartaApiError, "Unexpected response code (#{status_code}) received from MARTA API."
        end

        JSON.parse(response.body) unless response.body.empty?
      end
    end
  end
end
