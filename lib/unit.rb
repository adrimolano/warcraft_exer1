class Unit

  attr_reader :health_points, :attack_power

  def initialize(hp=60, ap=10)
    @health_points = hp
    @attack_power = ap
  end

 def damage(num)
    @health_points -= num
  end

  def attack!(enemy_unit)
    enemy_unit.damage(3)
  end

  def dead?
    health_points <= 0
  end

  def can_attack?
    !dead?
  end

  def can_be_attacked?
    !dead?
  end

end