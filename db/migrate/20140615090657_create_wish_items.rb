class CreateWishItems < ActiveRecord::Migration
  def change
    create_table :wish_items do |t|
      t.integer :user_id
      t.integer :wish_id
      t.integer :group_item_id

      t.timestamps
    end
  end
end
