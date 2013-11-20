class Group < ActiveRecord::Base
  attr_accessible :name, :functionality_ids

  has_many :users
  has_and_belongs_to_many :functionalities
end
