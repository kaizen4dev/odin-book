class UserFollowingsController < ApplicationController
  def create
    UserFollowing.create user_followings_params
  end

  def destroy
    UserFollowing.find_by(user_followings_params).destroy
  end

  private

  def user_followings_params
    params.expect :follower_id, :following_id
  end
end
