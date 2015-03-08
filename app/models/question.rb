class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :council
  has_many :answers
  has_attached_file :image , :styles => { :medium => "500x600#"}

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # accepts_nested_attributes_for :answers
   validates :council_id, presence: true
  validates :user_id, presence: true
end