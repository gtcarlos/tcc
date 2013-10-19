class Payment < ActiveRecord::Base
  attr_accessible :date, :transaction, :type
end
