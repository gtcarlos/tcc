class Badge < ActiveRecord::Base
  attr_accessible :description, :image, :name

  belongs_to :user
  
  has_many :user, :class_name => User, :foreign_key => :user_id
end
