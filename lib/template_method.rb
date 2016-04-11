class Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = 10
    @abilities = []
  end

  def attack
    "Attack dealing #{damage} damage"
  end


end

class Warrior < Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = 15
    @abilities = [:strike]
  end

end

class Mage < Hero
  attr_reader :damage, :abilities

  def initialize
    @damage = 7
    @abilities = [:fireball]
  end
end