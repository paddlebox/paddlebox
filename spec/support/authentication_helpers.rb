# frozen_string_literal: true

module AuthenticationHelpers
  module RequestSpecs
    def http_login
      username = ENV['BASIC_AUTH_USERNAME']
      password = ENV['BASIC_AUTH_PASSWORD']
      { HTTP_AUTHORIZATION: ActionController::HttpAuthentication::Basic.encode_credentials(username, password) }
    end
  end
end
