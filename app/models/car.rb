class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy

  validates :model, :brand, :immat, presence: true
  validates :immat, uniqueness: true
end
