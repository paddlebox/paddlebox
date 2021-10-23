# frozen_string_literal: true

class ContentController < ApplicationController
  before_action :slug, only: %i[fetch]

  def fetch; end

  def home; end

  private

  def slug
    @slug = params[:slug]
  end
end
