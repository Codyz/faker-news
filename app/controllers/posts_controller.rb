class PostsController < ApplicationController
  def new
    @post = Post.new
    @post.comments.build
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:success] = "Post saved"
    else
      flash[:error] = "Try again"
      @post.comments.delete_all
      @post.comments.build
      render :new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(post_id: @post.id)
  end

end