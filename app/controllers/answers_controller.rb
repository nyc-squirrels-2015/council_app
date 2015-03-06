class AnswersController < ApplicationController
	
	def index
		#a list of others' answers to your questions
		 @answers = Answer.all
	end

	def new
		@answer = Answer.new
		@question = Question.find(params[:question_id])
		@user = current_user
	end
	
	def create
		@answer = Answer.new answer_params
		@question = @answer.question
    if @answer.save
    	# parameters that I saved?
      redirect_to question_path(@question)
    else
      render :new
  	end
	end


  # def recent
  #   Answer.ordered_json
  #   answers = Answer.ordered_json
  #   render json: answers
  # end

 private

def answer_params
 	params.require(:answer).permit(:question_id, :user_id, :like)
 end 
end