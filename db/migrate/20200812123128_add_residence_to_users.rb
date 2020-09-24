class AddResidenceToUsers < ActiveRecord::Migration[5.2]
  def change
    #residence_idというカラムを作って、それが、prefecture.idと同じであることを表している。
    add_reference :users, :residence, null: false, foreign_key: { to_table: :prefectures }
  end
end
