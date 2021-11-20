# frozen_string_literal: true

Rails.application.routes.draw do
  root 'content#home'

  namespace :admin do
    resources :components, only: %i[index]
  end

  get '/:slug', to: 'content#fetch'
end
