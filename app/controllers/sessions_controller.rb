class SessionsController < ApplicationController
  
    def new
    end
    
    def create
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to school_index_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    end
    def destroy
      session[:user_id] = nil
      redirect_to root_url, notice: "Logged out!"
    end


=begin
    def create
        @user = User.find_by(email: params[:email].downcase)
        
        if @user && @user.authenticate(params[:email][:password])
            session[:user_id] = @user.id
            redirect_to 'school/index'
          
          flash[:notice] = "Logged in successfully."
          
        else
            redirect_to 'login'
          #flash.now[:alert] = "There was something wrong with your login details."
          #render 'new'
        end

      end
  
      def destroy
        session[:user_id] = nil
        flash[:notice] = "You have been logged out."
        redirect_to root_path
      end
=end
    
end


