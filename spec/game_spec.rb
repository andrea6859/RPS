require 'game'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) {{"name" => "Andrea", "player_weapon" => "rock",  "computer_weapon" => "paper"}}

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
          expect(game.computer_weapon). to eq 'paper'
        end
      end

  context 'end game' do
    subject(:win_game) { turn }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { {"name" => "Andrea", "player_weapon" => "rock",  "computer_weapon" => "paper"} }
    let(:draw_options) { {"name" => "Andrea", "player_weapon" => "paper",  "computer_weapon" => "paper"} }

      describe '#lose' do
        it 'returns false if player_weapon is :rock and computer_weapon is :paper'
        expect(lose_game.lose?).to eq true
      end

      describe '#win' do
        it 'returns true if player_weapon is :scissors and computer_weapon is :paper'
        expect(win_game.win?).to eq true
      end

      describe '#draw' do
        it 'returns true if player_weapon is :paper and computer_weapon is :paper'
        expect(draw_game.draw?).to eq true
      end

    end
end
