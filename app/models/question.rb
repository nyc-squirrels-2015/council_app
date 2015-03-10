class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :council
  has_many :answers
  has_attached_file :image , :styles => { small: "200x200#", :medium => "500x600#", :thumb => "100x100#"}, :storage => :s3,
     :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # accepts_nested_attributes_for :answers
  validates :council_id, :user_id, :content, presence: true

  def s3_credentials # SHOULD BE A CLASS METHOD
    {bucket: "council-app", access_key_id: ENV["AWS_KEY"],secret_access_key: ENV["AWS_SECRET"] }
  end

  def up_percentage
    if self.answers.count.zero?
      return 0
    else
      up_votes = self.answers.where(like: true).count
      ((up_votes.to_f / self.answers.count.to_f) * 100).round
    end
  end

  def already_answered(user_id)
    !!answers.find_by(user_id: user_id)
  end

end