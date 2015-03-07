class CouncilMembershipsController < ApplicationController

	def index
		@council_memberships = CouncilMemberships.all
	end

	def new	
		@council_memberships
	end

	def create	
	end

	def 	
	end

end