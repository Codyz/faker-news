class UsersController < ApplicationController
  def new
    @user = User.new
    3.times { @user.emails.build }
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:success] = "User saved"
      redirect_to root_url
    else
      flash[:error] = "Try again"
      @user.emails.delete_all
      3.times { @user.emails.build }
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end