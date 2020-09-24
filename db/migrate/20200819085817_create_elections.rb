class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.string :name
      t.integer :term

      t.timestamps
    end
  end
end
