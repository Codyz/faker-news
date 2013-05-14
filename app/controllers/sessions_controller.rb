class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_name(params[:name])

    if @user && @user.authenticate(params[:password])
      @user.session_token = SecureRandom.hex
      cookies.permanent[:session_token] = @user.session_token

      flash[:success] = "Logged in."
      #redirect_to root_url
      render :new
    else
      flash[:error] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    cookies.delete(:session_token)
  end
end