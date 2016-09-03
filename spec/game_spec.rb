require 'game'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) {{"name" => "Andrea", "player_weapon" => "rock",  "computer_weapon" => "rock"}}

  describe '#player_name' do
    it 'returns player_name' do
      expect(game.name). to eq 'Andrea'
    end
  end

    describe '#player_weapon' do
      it 'returns player_weapon' do
        expect(game.player_weapon). to eq 'rock'
      end
    end

      describe '#computer_weapon' do
        it 'returns computer_weapon' do
          expect(game.computer_weapon). to eq 'rock'
        end
      end
end
