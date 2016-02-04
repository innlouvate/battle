require 'player'

describe Player do
subject(:player) {described_class.new(player_name)}
let(:player_name) {double :player_name}
let(:opponent) {double :opponent}

  describe '#initialize' do
    it 'initiliazes with default HP' do
      expect(player.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#name' do
    it 'returns player name when name entered' do
      expect(player.name).to eq player_name
    end
  end

  describe '#attack' do
    it 'attacks the other player' do
      expect(opponent).to receive(:receive_damage)
      player.attack(opponent)
    end

  end

  describe '#receive_damage' do
    it 'reduces HP by two' do
      expect{player.receive_damage}.to change{player.hp}.by -2
    end
  end

end
