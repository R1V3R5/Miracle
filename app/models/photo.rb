class Photo < ActiveRecord::Base
  belongs_to :user 
  has_attached_file :image, 
      :storage => :dropbox,
      :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
      :styles => { :large => "800x800>", :thumb => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
