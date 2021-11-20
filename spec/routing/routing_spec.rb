# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it { is_expected.to route(:get, '/').to('content#home') }
  it { is_expected.to route(:get, '/admin/components').to('admin/components#index') }
  it { is_expected.to route(:get, '/foo').to('content#fetch', slug: 'foo') }
end
