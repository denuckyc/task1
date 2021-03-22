# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Bandwidths', :type => :request do
  describe 'GET to /servers/#{server_id}/bandwidths' do
    it 'returns Servers' do
      get('/servers/1/bandwidths')
      expect(response.status).to eql(200)
    end
  end
end
