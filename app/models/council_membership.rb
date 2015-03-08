class CouncilMembership < ActiveRecord::Base
  belongs_to :member, class_name: 'User', foreign_key: 'user_id'
  belongs_to :council

  validates :user_id, :council_id, presence: true
end