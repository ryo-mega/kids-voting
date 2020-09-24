class Election < ApplicationRecord
  has_many :ballots
  has_many :candidates
  has_many :participants, through: :ballots, source: :users
  has_many :members, through: :ballots, source: :candidates
end
