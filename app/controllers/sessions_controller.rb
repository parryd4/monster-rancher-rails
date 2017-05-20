class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:name])
    if user #!params[:name] || params[:name] == ""
      session[:id] = user.id
      redirect_to town_path
    else
      #session[:id] = User.find_by(username: params[:name]).id
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
