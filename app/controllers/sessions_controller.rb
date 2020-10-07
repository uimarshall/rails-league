class SessionsController < ApplicationController
    def create
        # find who a particular user is thru email column
        @user = User.find_by(email: params[:email])
        # if user found
        if @user and @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to players_path
        else
            flash[:errors]=["Invalid combination"] 
            redirect_back(fallback_location: root_path)  
            
        end
        
        
    end
    def destroy
        reset_session
        redirect_to :root
        
    end
    
    
    
end