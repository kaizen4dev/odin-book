class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    @new_comment = @post.comments.new
    @comments = Comment.where(commentable: @post)
  end
end
