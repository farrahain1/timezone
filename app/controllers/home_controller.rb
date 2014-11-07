class HomeController < ApplicationController
   include SessionsHelper
    
   
    
    
    def about
    end
    
    def contact
    end
    
    def list
        @users = User.all
    end
    
     
    def show
        @user = User.find(params[:id])
    end
  
    
     
end