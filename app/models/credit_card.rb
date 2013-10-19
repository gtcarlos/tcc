class CreditCard < ActiveRecord::Base
  attr_accessible :date, :flag, :name, :number, :seg_cod
end
