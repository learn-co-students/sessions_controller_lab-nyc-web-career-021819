class SessionsController < ApplicationController
 def new
 end

 def create
   if params[:name].present? == false || params[:name] == nil
     redirect_to login_path
   # elsif params[:name] == nil
   #   redirect_to login_path
   elsif
     session[:name] = params[:name]
     redirect_to root_path
   end
 end

 def destroy
   if session[:name] = params[:name]
   session.delete :username
  end
 end

end
