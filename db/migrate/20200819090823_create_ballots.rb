class CreateBallots < ActiveRecord::Migration[5.2]
  def change
    create_table :ballots do |t|
      t.references :user, foreign_key: true
      t.references :candidate, foreign_key: true
      t.references :election, foreign_key: true

      t.timestamps
    end
  end
end
