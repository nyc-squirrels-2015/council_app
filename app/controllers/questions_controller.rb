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
      send_notification(@question)
      redirect_to question_path(@question)
    else
      flash[:error] = 'Field cannot be left blank.'
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

  def send_notification question
    client = Rushover::Client.new(ENV["RUSHOVER_CLIENT"])
    resp = client.notify(ENV["RUSHOVER_USER"], "#{question.content[0,20]}...", :priority => 1, :title => "New Question")
  end
end