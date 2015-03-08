class CouncilMembershipsController < ApplicationController

	def index
		@council_memberships = CouncilMemberships.all
	end

	def new	
		@council_memberships = CouncilMemberships.new
	end

	def create
		@council_memberships = CouncilMemberships.where(council_params).first_or_create
    if @council
      redirect_to @council
    else
      render :new
    end	
	end

private


end