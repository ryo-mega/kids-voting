class AddElectionRefToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_reference :candidates, :election, foreign_key: true
  end
end
