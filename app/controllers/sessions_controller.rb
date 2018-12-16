class SessionsController < ApplicationController

 
 
 
    def create
      if !params[:name] || params[:name].empty?
        redirect_to '/login'  
      else
        session[:name] = params[:name]
        redirect_to controller: 'application', action: 'hello'
      end    
    end

    def new
    end 
    
    def destroy 
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
    end 



end 