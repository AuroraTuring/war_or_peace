require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do
  describe ':basic turn type' do
    let(:card1) { Card.new(:heart, 'Jack', 11) }
    let(:card2) { Card.new(:heart, '10', 10) }
    let(:card3) { Card.new(:heart, '9', 9) }
    let(:card4) { Card.new(:diamond, 'Jack', 11) }
    let(:card5) { Card.new(:heart, '8', 8) }
    let(:card6) { Card.new(:diamond, 'Queen', 12) }
    let(:card7) { Card.new(:heart, '3', 3) }
    let(:card8) { Card.new(:diamond, '2', 2) }
    let(:deck1) { Deck.new([card1, card2, card5, card8]) }
    let(:deck2) { Deck.new([card3, card4, card6, card7]) }
    let(:player1) { Player.new("Megan", deck1) }
    let(:player2) { Player.new("Aurora", deck2) }
    let(:turn) { Turn.new(player1, player2) }

    it 'exists with attributes' do
      expect(turn).to be_a(Turn)
      expect(turn.player1).to eq(player1)
      expect(turn.player2).to eq(player2)
      expect(turn.spoils_of_war).to eq([])
    end

    it 'returns :basic when each players first card is not of identical rank' do
      expect(turn.type).to eq(:basic)
    end

    it 'return whichever player has a higher rank_of_card_at(0)' do
      # winner = turn.winner
      # expect(winner).to eq(player1)
      expect(turn.winner).to eq(player1)
    end



  end

end
