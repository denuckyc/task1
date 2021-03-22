# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Servers', :type => :request do
  describe 'GET to /servers' do
    it 'returns Servers' do
      get('/servers')
      expect(response.status).to eql(200)
    end
  end
end
