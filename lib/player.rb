class Player

attr_reader :hitpoints

  DEFAULT_STARTING_HITPOINTS = 20
  DEFAULT_ATTACK = 2

  def initialize(player)
    @player = player
    @hitpoints = DEFAULT_STARTING_HITPOINTS
  end

  def name
    @player
  end

  def hitpoints
    @hitpoints
  end

  def receive_damage
    @hitpoints -= DEFAULT_ATTACK
  end
end
