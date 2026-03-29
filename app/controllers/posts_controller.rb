class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    @new_comment = @post.comments.new user: current_user
    @comments = Comment.where(commentable: @post).order(created_at: :desc)
  end
end
