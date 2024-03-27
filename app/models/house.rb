class House < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :notices, dependent: :destroy
end
