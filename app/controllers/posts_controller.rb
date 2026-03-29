class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    @new_comment = @post.comments.new
    @comments = @post.comments
  end
end
