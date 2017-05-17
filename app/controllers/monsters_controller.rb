class MonstersController < ApplicationController

  def create_market
    if !current_monster
      base_attributes = MonsterTemplate.find(params[:id]).attributes
      base_attributes[:remaining_life] = base_attributes["lifespan"]
      base_attributes.delete("id")
      base_attributes[:user_id] = current_user.id
      @current_monster = Monster.create(base_attributes)
      flash[:notice] = "Say hello to your new monster, #{current_monster.name}"
    else
      flash[:notice] = "You already have a monster!"
    end
    redirect_to town_path
  end

end
