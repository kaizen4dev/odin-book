class UsersController < ApplicationController
  def show
    if params[:username]
      @user = User.find_by name: params[:username]
    else
      @user = current_user
    end
  end

  def index
    @all = User.all
    @followers = current_user.followers
    @following = current_user.following
  end
end
