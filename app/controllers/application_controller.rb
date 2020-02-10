class ApplicationController < ActionController::Base
    def new
       
    end
    
    def create
        session[:user_id] = user_id
    end
    

end
