# frozen_string_literal: true

Rails.application.routes.draw do
  root 'content#home'

  get '/:slug', to: 'content#fetch'
end
