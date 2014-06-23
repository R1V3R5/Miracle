class CreateGroupItems < ActiveRecord::Migration
  def change
    create_table :group_items do |t|
      t.string :title
      t.text :specification
      t.string :features
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
