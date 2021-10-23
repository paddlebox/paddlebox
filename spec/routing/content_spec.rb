# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it { is_expected.to route(:get, '/').to(controller: :content, action: :home) }
  it { is_expected.to route(:get, '/foo').to(controller: :content, action: :fetch, slug: 'foo') }
end
