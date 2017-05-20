class LocationsController < ApplicationController
  before_action :require_login
  def lab

  end

  def market
    @monsters = MonsterTemplate.all
  end

  def ranch
    if !current_monster
      flash[:notice] = "Let's find a monster to bring back to the ranch!"
      redirect_to town_path
    end
  end

  def town

  end

end
