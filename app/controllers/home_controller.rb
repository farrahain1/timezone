class HomeController < ApplicationController
   include SessionsHelper
   
    
    def index
        #@user = User.all
         #@user = User.find(params[:id])
         @user = current_user
    end
    
    
    def about
    end
    
    def contact
    end
    
    def list
        @users = User.all
    end
    
  
    
     
end