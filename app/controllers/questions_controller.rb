class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find params[:id]
  end

  def new
    @question = Question.new
  end

  def create
    params[:question][:user_id] = current_user.id
    @question = Question.new question_params
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
  end

  def update
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