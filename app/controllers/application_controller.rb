class ApplicationController < ActionController::Base
    
    helper_method :current_user
    def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      else
        @current_user = nil
      end
    end

=begin
    helper_method :current_user, :logged_in?
    def current_user
        #User.find_by(id: session[:user_id])
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
        #!current_user.nil?  
        !!current_user
    end
    
    def require_user
      if !logged_in?
        flash[:alert] = "You must be logged in to perform that action."
        redirect_to login_path
      end
    end
=end
end