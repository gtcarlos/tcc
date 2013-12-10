class Startup < ActiveRecord::Base
  attr_accessible :area, :cnpj_duns, :contact, :fantasy_name, :files, :location, :logo, :message_limit, :city, :state
  validates_presence_of :area, :cnpj_duns, :contact, :fantasy_name, :location, :city, :state, presence => true

  belongs_to :user
  has_many :posts
  has_many :products

  has_attached_file :logo, :styles => {:small => "100x100>" },
    :url => "/assets/startups/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/startups/:id/:style/:basename.:extension"
end
