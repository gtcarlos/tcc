class Payment < ActiveRecord::Base
  attr_accessible :date, :transaction, :type

  belongs_to :user
end
