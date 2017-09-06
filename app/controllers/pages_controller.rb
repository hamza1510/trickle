class PagesController < ApplicationController
	before_action :disable_nav, only: [:show]

	def show
		@campaign = Campaign.find(params[:campaign_id])
		@page = Page.find(params[:id])
	end
end
