class AddIdToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :group_item_id, :integer
  end
end
