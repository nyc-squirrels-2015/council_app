class CouncilMembershipsController < ApplicationController

  def index
    @council_memberships = CouncilMembership.where(user_id: current_user.id)
  end

  def new
    @council_membership = CouncilMembership.new
  end

  def create
    @council_membership = CouncilMembership.where(council_membership_params).first_or_create
    if @council_membership.save
      send_notification("#{current_user.firstname}'s you to member #{@council_membership.council.council_name}", 'Council' )
      redirect_to councils_path
    else
      flash[:error] = 'Field cannot be left blank.'
      render :new
    end
  end

private
  def council_membership_params
    params.require(:council_membership).permit(:user_id, :council_id)
  end

end