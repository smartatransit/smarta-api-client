# frozen_string_literal: true

require 'rest-client'
require 'json'
require 'marta_api/utils'

module MartaApi
  module Rest
    module Rail
      include MartaApi::Utils

      def get_rail_schedule
        url = MARTA_API_ROOT + GET_RAIL_SCHEDULE_ENDPOINT + api_key_param
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
