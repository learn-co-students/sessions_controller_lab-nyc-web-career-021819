class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    unless session[:name] == "" || session[:name] == nil
    redirect_to '/'
    else
    redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
  end

end
