class ProfilesController < ApplicationController
  def index
    @copy = Rails.application.config_for(:copy)
  end

  def show
    if params[:id].blank?
      redirect_to profiles_path, notice: "Invalid handle"
    end

    @profile = Profile.new(params[:id])
  end
end
