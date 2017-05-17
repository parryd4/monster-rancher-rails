class SessionsController < ApplicationController

  def new
  end

  def create

    if !params[:name] || params[:name] == ""
      redirect_to login_path
    else
      session[:id] = User.find_by(username: params[:name]).id
      redirect_to town_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
