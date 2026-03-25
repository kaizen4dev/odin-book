class LikesController < ApplicationController
  def create
    Like.create like_params
  end

  def destroy
    Like.find_by(like_params).destroy
  end

  private

  def like_params
    params.permit :user_id, :likeable_type, :likeable_id
  end
end
