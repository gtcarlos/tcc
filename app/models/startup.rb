class Startup < ActiveRecord::Base
  attr_accessible :area, :cnpj_duns, :contact, :fantasy_name, :files, :location, :logo, :message_limit, :image
end
