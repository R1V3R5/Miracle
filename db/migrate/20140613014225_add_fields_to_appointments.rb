class AddFieldsToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :longitude, :float
    add_column :appointments, :latitude, :float
    add_column :appointments, :address, :string
    add_column :appointments, :city, :string
    add_column :appointments, :state, :string
    add_column :appointments, :zip, :string
    add_column :appointments, :phone, :string
  end
end
