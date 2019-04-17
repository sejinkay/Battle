require 'player'

describe Player do
  subject(:leia) { Player.new('Leia')}
  describe '#name' do
    it 'returns same name' do
      expect(leia.name).to eq "Leia"
    end
  end
end
