class UsersController < ApplicationController
    include SessionsHelper
    
     
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        
        
        if @user.save
            log_in @user
            redirect_to root_path, flash: {success:  'Successfully created account!' }
        else
            render 'new'
        end
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          redirect_to root_path
        else
          render 'edit'
        end
    end
    
    def index
        #@user = User.all
         #@user = User.find(params[:id])
         @user = current_user
    end
    
    
   
    
    private
    
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    
            
end
