require_relative 'player'

class Game
  def attack(player)
    player.get_attacked
  end
end
