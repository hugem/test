class ProfilesController < ApplicationController
  def index
  end

  def show
    @tweets = TwitterClient.get_profile(params[:id])
  end
end
