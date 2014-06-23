class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :title
      t.text :content
      t.string :tags
      t.string :author
      t.integer :user_id
      t.timestamps
    end
  end
end
