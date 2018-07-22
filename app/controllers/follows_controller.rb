class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    Follow.create(follower_id: current_user.id,
                  followed_id: params[:followed_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    Follow.find_by(follower_id: current_user.id,
                   followed_id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end
end
