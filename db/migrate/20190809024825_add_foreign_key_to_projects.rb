class AddForeignKeyToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :account_id, :integer
  end
end
