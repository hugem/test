class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    if current_user.nil?
      redirect_to login_path , notice: "Please login to continue"
    end
  end
end
