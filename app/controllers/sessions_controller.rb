class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
  end

  # https://gist.github.com/thebucknerlife/10090014
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome!"
    else
      redirect_to login_path, notice: "Your credentials are invalid"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "You have been logged out"
  end
end
