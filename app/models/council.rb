class Council < ActiveRecord::Base
  belongs_to :user
  has_many :council_memberships
  has_many :members, through: :council_memberships
  has_many :questions

  validates :council_name, presence: true
  validates :user_id, presence: true
end