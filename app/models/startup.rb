class Startup < ActiveRecord::Base
  attr_accessible :area, :cnpj_duns, :contact, :fantasy_name, :files, :location, :logo, :message_limit, :city, :state
  validates_presence_of :area, :cnpj_duns, :contact, :fantasy_name, :location, :city, :state, presence => true

  has_attached_file :logo, :styles => {:small => "100x100>" }
end
