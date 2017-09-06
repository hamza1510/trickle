class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_admin!
  before_action :configure_permitted_parameters, if: :devise_controller?

	def disable_nav
	  @disable_nav = true
	end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company, :website])
  end
end