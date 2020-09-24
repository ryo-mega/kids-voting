class CreateCandidates < ActiveRecord::Migration[5.2]
  def change
    create_table :candidates do |t|
      t.string :party
      t.text :pledge
      t.references :politician, foreign_key: true
      t.references :elections, foreign_key: true
      

      t.timestamps
    end
  end
end
