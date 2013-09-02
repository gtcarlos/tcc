class Post < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :user

  def self.paginate
    paginate :per_page => 15, :page => 1
  end
end
