class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :subtitle, :video
end