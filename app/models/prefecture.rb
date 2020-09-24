class Prefecture < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :name_kana, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
end
