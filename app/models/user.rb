class User < ActiveRecord::Base
  require 'role_model'

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include RoleModel

  # Default attributes
  attr_default :group_id, 1

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

  # Credit Cards
  has_many :credit_cards

  # Badges
  has_many :badges

  # Groups
  belongs_to :group

  # Functionalities
  has_many :functionalities, :through => :group

	# Messages
	has_many :messages

  # Investor
  has_one :investor

  # Photo
  has_attached_file :photo, :styles => {:thumbnail => "50x50>", :small => "150x150>"},
    :default_url => "default_avatar.png",
    :url => "/assets/users/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/users/:id/:style/:basename.:extension"

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :roles, :roles_mask, :group_id, :photo, :email_policy, :company, :location, :area, :bio

  roles_attribute :roles_mask

  def timeline
    Post.includes(:user).where(user_id: Friendship.where(user_id: self.id).pluck(:friend_id) << self.id).order("created_at desc")
  end


end
