class CreditCard < ActiveRecord::Base
  attr_accessible :date, :flag, :name, :number, :seg_cod
  validates_presence_of :date, :flag, :name, :number, :seg_cod, presence => true
  belongs_to :user
  belongs_to :upgrade 
end
