class Upgrade < ActiveRecord::Base
	attr_accessible :account_plan, :credit_card
	validates_presence_of :account_plan, :credit_card, presence => true

	belongs_to :user
	
end
