require 'game'

describe Game do
  subject(:game) { described_class.new(player_1,player_2) }
  subject(:player_1) {double(:player, :name => "Batman")}
  subject(:player_2) {double(:player, :name => "Superman")}

  describe 'initialization' do
    describe 'each player initialization' do
      it 'initialises player 1' do
        expect(game.player_1).to eq player_1
      end

      it 'initialises player 1' do
        expect(game.player_2).to eq player_2
      end

      it 'has current player as player 1' do
        expect(game.current_player).to eq player_1
      end

      it 'has current victim as player 2' do
        expect(game.current_victim).to eq player_2
      end

    end
  end

  describe '#attack' do
    it 'damages the player' do
      allow(player_2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#switch_turns' do

    it 'changes the current player' do
      game.switch_turns
      expect(game.current_player).to eq player_2
    end

    it 'changes the current victim' do
      game.switch_turns
      expect(game.current_victim).to eq player_1
    end

  end
end
