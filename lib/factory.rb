class Party
  attr_reader :members

  def initialize factory
    @members = []
    @factory = factory
  end

  def add_warriors(number)
    number.times { members << @factory.create_warrior }
  end

  def add_mages(number)
    number.times { members << @factory.create_mage }
  end
end

class HeroFactory
  def create_warrior
    Warrior.new
  end

  def create_mage
    Mage.new
  end
end

class PartyFactory < Party
  def create(occupation)
    if permitted_occupations.include?(occupation)
      self.class.const_get(occupation.to_s.capitalize).new
    else
      raise "Unknown occupation"
    end
  end

  def permitted_occupations
    [:warrior, :mage]
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