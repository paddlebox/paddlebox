# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContentController, type: :request do
  describe 'GET #fetch' do
    subject { get '/foo' }

    it { is_expected.to render_template(:fetch) }
  end

  describe 'GET #home' do
    subject { get '/' }

    it { is_expected.to render_template(:home) }
  end
end
