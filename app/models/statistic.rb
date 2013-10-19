class Statistic < ActiveRecord::Base
  attr_accessible :hits, :post_shared, :post_views, :published_posts
end
