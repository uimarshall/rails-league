class ApplicationController < ActionController::Base
    def current_user
        # find a user if a user is signed in
        User.find(session[:user_id]) if session[:user_id] 
        
    end
    def require_login
        # redirect to root page if session id is non existing
        unless session[:user_id]
            flash[:errors]=["You must login first"] 
        redirect_to root_path 
        end
    end
    
    
end


