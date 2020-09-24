class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  enum gender:{ "M": 0, "F": 1, "X": 2 }
  has_many :ballots
  has_many :followings, through: :ballots, source: :candidates
  has_many :votings, through: :ballots, source: :elections
end
