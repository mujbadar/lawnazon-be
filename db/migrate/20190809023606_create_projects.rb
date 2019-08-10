class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :type
      t.string :description
      t.boolean :t_frame
      t.boolean :budget

      t.timestamps
    end
  end
end
