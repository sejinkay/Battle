require 'player'

describe Player do
  subject(:leia) { Player.new('Leia')}
  subject(:luke) { Player.new('Luke')}
  describe '#name' do
    it 'returns same name' do
      expect(leia.name).to eq "Leia"
    end
  end

  describe '#get_attacked' do
    it 'reduces players HP by 10' do
      expect{ luke.get_attacked }.to change{ luke.HP }.by -10
    end
  end
end
