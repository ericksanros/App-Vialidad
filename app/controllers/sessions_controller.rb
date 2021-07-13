class SessionsController < AplicationController
    def create
        @user = User.find_by(username: params[:username])
        #authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session & redirect if succes 
            session[:user_id] = @user.id
            redirect_to user_path
        else
            message = "Error"
            redirect_to login_path, notice: message 
        end
    end
    
    
end