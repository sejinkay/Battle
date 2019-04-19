require 'player'

describe Player do
  subject(:leia) { Player.new('Leia')}
  subject(:luke) { Player.new('Luke')}
  describe '#name' do
    it 'returns same name' do
      expect(leia.name).to eq "Leia"
    end
  end

  describe 'attack' do
    it 'reduces players HP by 10' do
      expect{ leia.attack(luke) }.to change{ luke.HP }.by -10
    end
  end
end
