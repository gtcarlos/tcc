class Badge < ActiveRecord::Base
  attr_accessible :description, :image, :name

  belongs_to :user
  
  has_many :user, :class_name => User, :foreign_key => :user_id

  # Paperclip
  has_attached_file :image,
  #:styles => { :thumbnail => "25x25>", :medium => "100x100>" },
  :url => "/assets/images/badges/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/badges/:id/:style/:basename.:extension"

  #validates_attachment_size :photo, :less_than => 5.megabytes
  #validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
