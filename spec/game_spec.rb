require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:leia) { double :player1 }
  let(:luke) { double :player2 }
  describe '#attack' do
    it 'attack the player2' do
      expect(luke).to receive(:get_attacked)
      game.attack(luke)
    end
  end
end
