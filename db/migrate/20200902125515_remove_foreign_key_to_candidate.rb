class RemoveForeignKeyToCandidate < ActiveRecord::Migration[5.2]
  def change
    #remove_foreign_key :candidates, name: :elections
    remove_column :candidates, :elections_id
    
    # remove_reference :candidates, :elections, index: true, foreign_key: true
    
    #add_foreign_key :candidates, :elections
    # remove_foreign_key :accounts, column: :owner_id
    # add_foreign_key :articles, :authors
  end
end
