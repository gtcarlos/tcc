class Report < ActiveRecord::Base
  attr_accessible :reason

  belongs_to :user

  has_one :user
end
