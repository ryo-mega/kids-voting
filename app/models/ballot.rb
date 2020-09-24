class Ballot < ApplicationRecord
  validates :candidate_id, uniqueness: { scope: :user_id }
  validates :election_id, uniqueness: { scope: :user_id }
  belongs_to :user
  belongs_to :candidate
  belongs_to :election
end
