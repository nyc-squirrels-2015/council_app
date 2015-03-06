class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

 #  def answers
 #    self.hashtags.pluck(:name)
 #  end

 #  def self.ordered_json
 #  	order("created_at DESC").limit(50).to_json(methods: :answers)
	# end
end