class Politician < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  has_many :candidates
end
