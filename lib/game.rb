class Game

  attr_reader :player_1, :player_2, :current_player, :current_victim

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @current_victim = player_2
  end

  def attack
    @current_victim.receive_damage
  end

  def switch_turns
    @current_player = other_player
    @current_victim = other_player
  end

  def game_over?
    @current_victim.hit_points == 0
  end

  private

  def other_player
    @current_player == player_1 ? player_2 : player_1
  end
end
