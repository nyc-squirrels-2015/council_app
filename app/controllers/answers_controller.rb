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
    p "*" * 50
    p params
    p "*" * 50
    p answer: params
    p "*" * 100
    p answer_params

    @question = Question.find(params[:question_id])
    @question.answers.build(answer_params)
    if @question.save
      flash.notice = "Thanks for voting!"
      redirect_to root_path
    end

	# 	@answer = Answer.new(answer_params)

 #    if @answer.save
 #      if request.xhr?
 #        (article.votes.count).to_json
 #        respond_to do |format|
 #          format.js {render json: article.votes.count}
 #        end
 #      redirect_to question_path(@answer.question)
 #    else
 #      render :new
 #  	end
	# end
end




 private

def answer_params
 	params.require(:answer).permit(:like).merge(user_id: current_user.id)
 end
end