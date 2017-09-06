class Admins::CampaignsController < AdminsController
	# before_action :restrict_permissions, only: [:show, :edit]

	def new
		@campaign = current_admin.campaigns.new	
	end

	def create
		@campaign = current_admin.campaigns.new(campaign_params)
		if @campaign.save
			flash[:notice] = "New campaign is created."
			redirect_to root_url
		else
			flash[:alert] = "Couldn't create new campaign."
			render :new
		end
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

	def edit
		@campaign = Campaign.find(params[:id])
	end

	def update
		@campaign = current_admin.campaigns.find(params[:id])
		if @campaign.update_attributes(campaign_params)
			flash[:notice] = "campaign is updated."
			redirect_to admins_campaign_url(@campaign)
		else
			flash[:alert] = "Couldn't update campaign."
			render :new
		end
	end

	private
	def restrict_permissions
		@campaign = Campaign.find(params[:id])
		unless current_admin.id == @campaign.admin_id
      flash[:alert] = "You don't have access to that."
      redirect_to root_url
    end
	end

	def campaign_params
		params.require(:campaign).permit(:url, :title, :description, :active, :name)
	end
end