class AnswersController < ApplicationController
	
	def index
		#a list of others' answers to your questions
		 @answers = Answer.all
	end

	def new
		@answer = Answer.new
	end
	
	def create
		@answer = Answer.new answer_params
    if @answer.save
      redirect_to answer_path(@answer)
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
 	params.require(:answers).permit(:question_id, :user_id, :like)
 end 
end