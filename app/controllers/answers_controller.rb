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
      redirect_to user_path(current_user)
    else
      flash.notice = "There was a problem with your vote."
      redirect_to question_path(@question)
    end
  end

  private

  def answer_params
     params.require(:answer).permit(:like).merge(user_id: current_user.id)
  end
end