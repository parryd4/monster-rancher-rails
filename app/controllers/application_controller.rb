class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?


  private

  def current_user
    @current_user = User.find(session[:id])
  end

  def current_monster
    @current_monster = current_user.monsters.find_by(status: "active")
  end

  def logged_in?
    !!session[:id]
  end

end
