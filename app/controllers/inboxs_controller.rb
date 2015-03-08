class InboxsController < ApplicationController

  def index
    cm = CouncilMembership.find_by(user_id: current_user.id)
    @questions = Question.where(council_id: cm.council_id)
  end
end