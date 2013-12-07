class Message < ActiveRecord::Base
  attr_accessible :content, :user_receiver_id, :user_id, :title, :read_flag
  validates_presence_of :content, :user_receiver_id, :user_id, :title, :read_flag, presence => true

  belongs_to :user
end
