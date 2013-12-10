class Upgrade < ActiveRecord::Base
	attr_accessible :account_plan, :credit_card, :user_id
	validates_presence_of :account_plan, :credit_card, :user_id, presence => true

	belongs_to :user
	
end
