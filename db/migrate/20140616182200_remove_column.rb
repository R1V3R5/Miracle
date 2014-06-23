class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :authorizations, :email
  end
end
