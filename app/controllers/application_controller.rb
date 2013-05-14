class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  # def current_user
  #   if cookies[:session_token]
  #     @current_user ||= User.find_by_session_token(cookies[:session_token])
  #   else
  #     return nil
  #   end
  # end

  def current_user_id
    if cookies[:session_token]
      User.find_by_session_token(cookies[:session_token]).id
    else
      nil
    end
  end

	def logged_in?
    !!current_user_id
	end

	helper_method :current_user, :logged_in?, :current_user_id

end
