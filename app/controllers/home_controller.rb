class HomeController < ApplicationController
   
    
    def index
        @users = User.all
    end
    
    def about
    end
    
    def contact
    end
    
    def list
        @users = User.all
    end
    
    
     
end