class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :subtitle, :video, :photo, :photo_file_name, :user_id
  belongs_to :user
  belongs_to :startup
  
  has_attached_file :photo, :styles => {:thumbnail => "50x50>", :small => "150x150>"},
    :default_url => "default_avatar.png",
    :url => "/assets/products/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
    belongs_to :user
end