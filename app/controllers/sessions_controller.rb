class SessionsController < ApplicationController

  def new

    render :new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
  end
end
