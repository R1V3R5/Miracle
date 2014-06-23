class Appointment < ActiveRecord::Base
  validates :address, :title, :date, presence: true
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

end
