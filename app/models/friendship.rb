class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: "friend_id"

  # after_save :make_mirror_if_needed

  validates :friend, presence: true
  validates :user, presence: true
  validates :user_id, :friend_id, presence: true

  private

  def make_mirror_if_needed
    existing_count = Friendship.where(user_id: friend_id, friend_id: user_id).count
    Friendship.create(user_id: friend_id, friend_id: user_id) if  existing_count == 0
  end
end