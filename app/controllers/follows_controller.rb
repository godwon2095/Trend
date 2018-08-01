class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    Follow.create(follower_id: current_user.id,
                  followed_id: params[:followed_id])

    @user = User.find(params[:followed_id])

    respond_to do |format|
      format.js
    end
  end

  def destroy
    Follow.find_by(follower_id: current_user.id,
                   followed_id: params[:id]).destroy
    @user = User.find(params[:followed_id])

    respond_to do |format|
      format.js
    end
  end
end
