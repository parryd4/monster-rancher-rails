class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :current_monster, :logged_in?
  helper_method :game_time

  private



  def game_time
    time = current_user.game_time
    months = ["Jan","Feb","Mar","Apr","May","Jun","July","Aug","Sept","Oct","Nov","Dec"]
    weeks = ["1st","2nd","3rd","4th"]
    "<h1>#{ time / 48}</h1><h2>#{weeks[time % 48 % 4]}  #{months[time % 48 / 4]}</h2>"

  end

  def current_user
    User.find(session[:id]) if logged_in?

  end

  def current_monster
    @current_monster = current_user.monsters.find_by(status: "active")
  end

  def logged_in?
    !!session[:id]
  end

  def require_login
  redirect_to login_path unless logged_in?
end

end
