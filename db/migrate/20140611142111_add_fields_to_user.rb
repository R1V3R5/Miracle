class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :name2, :string
    add_column :users, :due_date, :string
    add_column :users, :conceive, :boolean
  end
end
