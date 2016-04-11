class Hero
  attr_reader :damage, :abilities

  def initialize(occupation=nil)
    if occupation == :warrior
      @damage = 15
      @abilities = [:strike]
    elsif occupation == :mage
      @damage = 7
      @abilities = [:fireball]
    else
      @damage = 10
      @abilities = []
    end
  end

  def attack
    "Attack dealing #{damage} damage"
  end
end