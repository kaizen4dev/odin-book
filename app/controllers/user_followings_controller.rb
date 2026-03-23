class UserFollowingsController < ApplicationController
  def create
    UserFollowing.create user_followings_params
  end

  def destroy
    UserFollowing.find_by(follower_id: params[:follower_id], following_id: params[:following_id]).destroy
  end

  private

  def user_followings_params
    params.permit :follower_id, :following_id
  end
end
