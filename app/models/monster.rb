class Monster < ApplicationRecord
  belongs_to :user
  validates_associated :user

  def fatigue_stress_warning
    "#{self.name} #{self.fatigue_warning} #{self.stress_warning}."
  end

  def stress_warning
    case self.stress
    when 0..29
      ""
    when 29..49
      "and seems a little stressed"
    when 50..69
      "and seems pretty stressed"
    when 69..99
      "and seems really stressed"
    end
  end

  def fatigue_warning
    case self.fatigue
    when 0
      " looks really energetic"
    when 1..19
      " looks pretty lively"
    when 20..29
      " seems to be in good shape"
    when 30..39
      " seems to be a little tired"
    when 40..49
      " is tired"
    when 50..69
      " is really worn out"
    when 70..89
      " is exhausted"
    when 90..110
      " is about to collapse"
    end
  end

  def lifespan_hit
    life_index = self.fatigue + (2 * self.stress)
    hit = [[(life_index)/35 - 1, 1 ].max , 7].min
    self.remaining_life - hit  
  end

  def light_drill(stat)
    self.stress += 5
    self.fatigue += 10
    self[stat] += 5
    self.save
  end

  def heavy_drill(stats)
    self.stress += 12
    self.fatigue += 15
    self[stats[0]] += 9
    self[stats[1]] += 4
    self[stats[2]] -= 3
    self.save
  end

  def rest
    self.stress -= 10
    # will later make a function of barn size and Items
    self.fatigue -= 43

    self.stress = 0 if self.stress < 0
    self.fatigue = 0 if self.fatigue < 0
    self.save
  end
end
