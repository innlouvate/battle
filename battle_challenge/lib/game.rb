require_relative 'player'

class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @turn = opponent
  end

  def opponent
    player_1 == turn ? player_2 : player_1
  end

  def game_over?
    player_1.hp == 0 || player_2.hp == 0
  end

end
