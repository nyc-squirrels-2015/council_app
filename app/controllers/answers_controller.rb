class AnswersController < ApplicationController

	def index
		 @answers = Answer.all
	end

	def new
		@answer = Answer.new
		@question = Question.find(params[:question_id])
		@user = current_user
	end

	def create

    @question = Question.find(params[:question_id])
    @question.answers.build(answer_params)
    if @question.save
      flash.notice = "Thanks for voting!"
      redirect_to inboxs_path
    end
  end

  private

  def answer_params
 	  params.require(:answer).permit(:like).merge(user_id: current_user.id)
  end
end