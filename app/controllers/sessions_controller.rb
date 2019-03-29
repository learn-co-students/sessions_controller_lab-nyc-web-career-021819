class SessionsController < ApplicationController

def new
    if session[:name] && session[:name] != ""
        render '/'
    else
        render :new
    end
end

def create
    if params[:name] && params[:name] != ""
    session[:name] = params[:name]
    redirect_to '/'
    else
    redirect_to login_path
    end
end

def destroy
    session.delete :name
    redirect_to login_path
end

end