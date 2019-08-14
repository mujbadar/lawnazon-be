class AddBidderNameToBids < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :bidder_name, :string
  end
end
