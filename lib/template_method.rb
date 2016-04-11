class Hero
  attr_reader :damage

  def initialize
    @damage = 10
  end

  def attack
    "Attack dealing #{damage} damage"
  end
end