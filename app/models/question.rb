class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :council
  has_many :answers
  has_attached_file :image
end