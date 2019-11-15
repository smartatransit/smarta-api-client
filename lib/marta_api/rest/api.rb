# frozen_string_literal: true
require 'marta_api/rest/rail'
require 'marta_api/rest/bus'

module MartaApi
  module Rest
    module API
      include MartaApi::Rest::Rail
      include MartaApi::Rest::Bus
    end
  end
end
