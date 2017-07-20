require 'game'

describe Game do
  subject(:game) { described_class.new }
  subject(:player_1) {double(:player, :name => "Batman")}
  subject(:player_2) {double(:player, :name => "Superman")}

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
