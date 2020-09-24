class Candidate < ApplicationRecord
  belongs_to :politician
  belongs_to :election
  has_many :ballots
  has_many :followers, through: :ballots, source: :users
  has_many :votes, through: :ballots, source: :elections
end
