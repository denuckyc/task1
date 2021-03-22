class Bandwidth < ApplicationRecord
  belongs_to :server
  # Т.к. скорость интерефейса должна быть больше 0
  validates :value, presence: true, numericality: { greater_than: 0 }
  # Проверка на уникальность имени в пределах сервера
  validates :interface_name, uniqueness: { scope: :server_id }
end
