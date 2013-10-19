class Interest < ActiveRecord::Base
  attr_accessible :area, :city, :foundation_time, :invested_startups, :investor_groups, :linked_startups, :number_employees, :number_investors, :region, :state, :type
end
