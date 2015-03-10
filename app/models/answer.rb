class Answer < ActiveRecord::Base
  include ActiveModel::Validations
  
  belongs_to :question
  belongs_to :user

  validates :question, :user, presence: true
  validates :like, inclusion: { in: [true, false] }

  validate :not_own_question
  validate :cant_answer_twice
  
  def cant_answer_twice 
    if question && question.already_answered(user.id)
      errors[:duplicate] <<  "You can't answer more than once."
    end
  end

  def not_own_question
    if question && question.user && question.user == user
      errors[:own_question] << "You can't answer your own question."
    end
  end
 
end