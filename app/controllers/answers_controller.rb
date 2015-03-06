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
		@answer = Answer.new(answer_params)
		@answer.question = Question.find(params[:question_id])
		@answer.user = current_user

		
    if @answer.save
      redirect_to question_path(@answer.question)
    else
    	#flash error
      render :new
  	end
	end


 private

def answer_params
 	params.require(:answer).permit(:question_id, :user_id, :like)
 end 
end