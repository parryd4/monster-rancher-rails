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

  def drills
    redirect_to town_path if !current_monster
    @monster = current_monster
  end

  def train
    if  params[:id].length == 3
      current_monster.light_drill(params[:id])
    else
      current_monster.heavy_drill(params[:id].split(','))
    end
    pass_time
    redirect_to ranch_path
  end

  def rest
    current_monster.rest
    pass_time
    redirect_to ranch_path
  end
end
