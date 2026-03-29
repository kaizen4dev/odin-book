class CommentsController < ApplicationController
  def create
    @comment = Comment.new comment_params

    if @comment.save
      redirect_back_or_to :root
    else
      redirect_back_or_to :root, notice: @comment.errors
    end
  end

  private

  def comment_params
    params.expect comment: [ :user_id, :body, :commentable_type, :commentable_id ]
  end
end
