class CantAnswerOwnQuestion < ActiveModel::Validator
  def validate(record)
    if record.question.user == record.user
      record.errors[:own_question] << "You can't answer your own question."
    end
  end
end

class CantAnswerTwice < ActiveModel::Validator
  def validate(record)
    if record.question.already_answered(record.user.id)
      record.errors[:duplicate] << "You can't answer more than once."
    end
  end
end


class Answer < ActiveRecord::Base
  include ActiveModel::Validations
  
  belongs_to :question
  belongs_to :user

  validates :question_id, :user_id, presence: true
  validates :like, inclusion: { in: [true, false] }
  validates_with CantAnswerOwnQuestion
  validates_with CantAnswerTwice

 # question's user != user

 # question doesn't have another answer with this user
 # !question.already_answered(user.id)

end