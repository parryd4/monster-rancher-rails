class LocationsController < ApplicationController

  def town

  end

  def market
    @monsters = MonsterTemplate.all
  end

  def lab

  end

end
