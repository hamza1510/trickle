class CampaignsController < ApplicationController
	before_action :disable_nav, only: [:show]

	def show
		@campaign = Campaign.find(params[:id])
		@pages = @campaign.pages
		validate_campaign
	end

	private
	def validate_campaign
		if !@campaign.active?
			redirect_to "http://#{@campaign.admin.website}"
		elsif @campaign.url.present?
			redirect_to "http://#{@campaign.url}"
		end
	end
end
