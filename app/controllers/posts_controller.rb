class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
    @new_comment = @post.comments.new user: current_user
    @comments = Comment.where(commentable: @post).order(created_at: :desc)
  end

  def new
    @post = Post.new user: current_user
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def post_params
    params.expect post: [ :title, :body, :user_id ]
  end
end
