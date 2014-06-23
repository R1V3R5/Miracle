class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :forum
      t.references :user
      t.string :name
      t.string :user_name
      t.timestamps
    end
  end
end
