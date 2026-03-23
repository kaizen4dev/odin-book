class UsersController < ApplicationController
  def show
    @user = User.find_by name: params[:username]
  end

  def index
    @all = User.all
    @followers = current_user.followers
    @following = current_user.following
  end
end
