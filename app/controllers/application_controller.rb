class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  before_action :require_login
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_filter :set_current_user

  def set_current_user
    User.current = current_user
  end

  private 
  def user_not_authorized
  	flash[:warning] = "No tienes permisos suficientes para realizar esa accion."
  	redirect_to(request.referrer || root_path)
  end
end
