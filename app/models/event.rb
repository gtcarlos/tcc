class Event < ActiveRecord::Base
  attr_accessible :date, :description, :image, :local, :name, :privacy
end
