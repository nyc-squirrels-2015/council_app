class QuestionsController < ApplicationController

  def index
    @questions = Question.where(user_id: current_user.id).order("created_at DESC")
  end

  def show
    @question = Question.find params[:id]
    @action = question_answers_path(@question)
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    params[:question][:user_id] = current_user.id
    @question = Question.new question_params
    if @question.save
      send_notification(@question.content, "New Question")
      redirect_to question_path(@question)
    else
      flash[:error] = 'Field cannot be left blank.'
      redirect_to new_question_path
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to questions_path
  end

private
  def question_params
    params.require(:question).permit(:user_id, :council_id, :content, :image)
  end
end