class ProfilesController < ApplicationController
  def index
    @copy = Rails.application.config_for(:copy)
  end

  def show
    @tweets = TwitterClient.get_profile(params[:id])
  end
end
