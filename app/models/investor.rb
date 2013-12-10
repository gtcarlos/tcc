class Investor < ActiveRecord::Base
  attr_accessible :area, :bio, :company, :history, :location, :name, :image, :user_id, :photo

  belongs_to :user
	has_many :posts

  # Photo
  has_attached_file :photo, :styles => {:thumbnail => "50x50>", :small => "150x150>"},
    :default_url => "default_avatar.png",
    :url => "/assets/investors/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/investors/:id/:style/:basename.:extension"
end
