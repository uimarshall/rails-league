class UsersController < ApplicationController
    def index
        @user = User.new
        
    end
    def create
        @user = User.new(user_params)
        
        if @user.save
            # Save the user created to session for something later
            # We call the key 'user_id' stored in the session hash
            session[:user_id] = @user.id
            redirect_to players_path
            
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to action: :index
            
        end
        
        
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
        
    end
    
    
end
