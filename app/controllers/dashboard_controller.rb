class DashboardController < ApplicationController
	def index
		@campaigns = current_admin.campaigns
	end
end
