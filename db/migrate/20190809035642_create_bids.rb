class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.decimal :price, precision: 11, scale: 2
      t.string :materials
      t.string :location
      t.boolean :delivery
      t.boolean :warranty

      t.timestamps
    end
  end
end
