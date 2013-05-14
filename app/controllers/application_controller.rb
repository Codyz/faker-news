class ApplicationController < ActionController::Base
  protect_from_forgery

  private

	def current_user
		if session[:session_token]
			@current_user ||= User.find_by_session_token(session[:session_token])
		else
			return nil
		end
	end

	def logged_in?
		!!current_user
	end

	helper_method :current_user, :logged_in?

end
