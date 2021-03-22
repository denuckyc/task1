require 'rails_helper'

RSpec.describe Bandwidth, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:value) }
    it { is_expected.to validate_numericality_of(:value).is_greater_than(0) }
    it { is_expected.to validate_uniqueness_of(:interface_name).scoped_to(:server_id) }
  end
end
