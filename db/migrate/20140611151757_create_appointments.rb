class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :date
      t.integer :user_id
      t.timestamps
    end
  end
end
