class Server < ApplicationRecord
  has_many :bandwidths, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
