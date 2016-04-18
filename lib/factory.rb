class Party
  attr_reader :members

  def initialize number
    @members = []
    number.times { members << create }
  end
end

class WarriorParty < Party
  def create
    Warrior.new
  end
end

class MageParty < Party
  def create
    Mage.new
  end
end

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

  def greet
    "#{greeting_line}"
  end

  def greeting_line
    raise "You must define greeting_line"
  end
end

class Warrior < Hero
  def damage_value
    15
  end

  def occupation_abilities
    [:strike]
  end

  def greeting_line
    "Warrior is ready to fight"
  end
end

class Mage < Hero
  def damage_value
    7
  end

  def occupation_abilities
    [:fireball]
  end

  def greeting_line
    "Wisdom is power"
  end
end