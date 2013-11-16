class User < ActiveRecord::Base
  require 'role_model'

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include RoleModel

  # Posts
  has_many :posts

  # Friendship
  has_many :friendships
  has_many :friends, :through => :friendships

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  # Reports
  has_many :reports

  # Payments
  has_many :payments

  # Badges
  has_many :badges

  # Groups
  belongs_to :user

  # Functionalities
  has_many :functionalities, :through => :group
	
	# Messages
	has_many :messages

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :roles, :roles_mask

  roles_attribute :roles_mask

  roles :admin, :default

  def timeline
    Post.includes(:user).where(user_id: Friendship.where(user_id: self.id).pluck(:friend_id) << self.id).order("created_at desc")
  end

end
