class User < ActiveRecord::Base
  has_secure_password
  has_many :questions
  has_many :answers
  has_many :friendships
  has_many :friends, class_name: 'User', through: :friendships, foreign_key: 'friend_id'
  has_many :councils
  has_many :council_memberships, foreign_key: 'user_id'
  has_many :attended_councils, class_name: 'Council', through: :council_memberships, source: :council

  validates :firstname, :lastname, :email, presence: true
end
