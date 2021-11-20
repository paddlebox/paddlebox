# frozen_string_literal: true

require 'rails_helper'

module Admin
  RSpec.describe ComponentsController, type: :request do
    describe 'GET #index' do
      subject { get '/admin/components', params: { headers: headers } }

      context 'when logged in' do
        let(:headers) { http_login }

        it { is_expected.to render_template(:index) }
      end

      context 'when NOT logged in' do
        let(:headers) { {} }

        it { is_expected.to eq(401) }
      end
    end
  end
end
