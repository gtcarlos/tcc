class Investor < ActiveRecord::Base
  attr_accessible :area, :bio, :company, :history, :location, :name
end
