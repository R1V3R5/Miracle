class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :meal
      t.string :drink
      t.integer :user_id
      t.timestamps
    end
  end
end
