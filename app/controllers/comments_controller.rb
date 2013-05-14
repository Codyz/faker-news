class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])

    if @comment.save
      flash[:success] = "Comment submitted"
      redirect_to post_url(@comment.post)
    else
      flash[:error] = "Try again"
      render :new
    end
  end

  def show
    @comment = Comment.find(params[:id])
    @new_comment = Comment.new
  end
end