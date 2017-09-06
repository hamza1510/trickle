class Admins::PagesController < AdminsController
	before_action :set_campaign, only: [:new, :create, :show, :edit, :update]
	# before_action :restrict_permissions, only: [:show, :edit]

	def new
		@page = @campaign.pages.new
	end

	def create
		@page = @campaign.pages.new(page_params)
		if @page.save
			flash[:notice] = "New page is created."
			redirect_to root_url
		else
			flash[:alert] = "Couldn't create page."
			render :new
		end
	end

	def show
		@page = Page.find(params[:id])
	end

	def edit
		@page = @campaign.pages.find(params[:id])
	end

	def update
		@page = @campaign.pages.find(params[:id])
		if @page.update_attributes(page_params)
			flash[:notice] = "Page is updated."
			redirect_to root_url
		else
			flash[:alert] = "Couldn't update page."
			render :new
		end
	end

	private
	def set_campaign
		@campaign = Campaign.find(params[:campaign_id])
	end

	def restrict_permissions
		@campaign = Campaign.find(params[:campaign_id])
		unless current_admin.id == @campaign.admin_id
      flash[:alert] = "You don't have access to that."
      redirect_to root_url
    end
	end

	def page_params
		params.require(:page).permit(:title, :content, :url, :page_type)
	end
end