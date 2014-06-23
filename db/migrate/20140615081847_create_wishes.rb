class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :feature
      t.text :specification
      t.integer :group_id

      t.timestamps
    end
  end
end
