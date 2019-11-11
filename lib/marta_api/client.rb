# frozen_string_literal: true
require 'marta_api/rest/api'
require 'dotenv'

module MartaApi
  class Client
    include MartaApi::Rest::API

    def initialize
      Dotenv.load
    end
  end
end
