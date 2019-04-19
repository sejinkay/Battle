class Player
  attr_reader :name
  attr_accessor :HP

  def initialize(name)
    @name = name
    @HP = 200
  end

  def attack(player)
    player.HP -= 10
  end
end
