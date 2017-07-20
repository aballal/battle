require 'player'

describe Player do
  subject(:batman)  { described_class.new("Batman") }
  subject(:superman) {described_class.new("Superman")}

  describe '#name' do
    it 'returns a name' do
      expect(batman.name).to eq "Batman"
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(batman.hit_points). to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(superman).to receive(:receive_damage)
      batman.attack(superman)
    end
  end

  describe '#receive damage' do
    it 'reduces hit points' do
      expect { superman.receive_damage }.to change {superman.hit_points}.by(-10)
    end
  end

end
