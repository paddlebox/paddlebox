# frozen_string_literal: true

module Admin
  class AdminController < ApplicationController
    before_action :authenticate

    private

    def authenticate
      head :unauthorized and return unless http_authorization_valid?
    end

    def http_authorization
      username = ENV['BASIC_AUTH_USERNAME']
      password = ENV['BASIC_AUTH_PASSWORD']
      ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
    end

    def http_authorization_valid?
      params[:headers]&.[]('HTTP_AUTHORIZATION') == http_authorization
    end
  end
end
