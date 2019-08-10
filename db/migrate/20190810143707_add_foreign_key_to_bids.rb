class AddForeignKeyToBids < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :project_id, :integer
    add_column :bids, :account_id, :integer
  end
end
