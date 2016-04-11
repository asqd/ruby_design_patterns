class Hero
  attr_reader :damage, :abilities

  def initialize
    initialize_stats

    @damage = damage_value
    @abilities = occupation_abilities

  end

  def initialize_stats
  end

  def damage_value
    10
  end

  def occupation_abilities
    []
  end

  def attack
    "Attack dealing #{damage} damage"
  end


end

class Warrior < Hero
  def damage_value
    15
  end

  def occupation_abilities
    [:strike]
  end
end

class Mage < Hero
  def damage_value
    7
  end

  def occupation_abilities
    [:fireball]
  end
end