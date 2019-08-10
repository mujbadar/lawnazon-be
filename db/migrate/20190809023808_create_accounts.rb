class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.string :f_name
      t.string :l_name
      t.string :location
      t.string :bio
      t.string :img

      t.timestamps
    end
  end
end
