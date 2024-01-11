require './lib/card'
require './lib/deck'

RSpec.describe Deck do
  before(:each) do
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)
  end

  it 'exists' do
    expect(@deck).to be_a(Deck)
  end

  it 'has attributes' do
    expect(@deck.cards).to eq(@cards)
  end

  it 'returns rank of card based on given index' do
    expect(@deck.rank_of_card_at(0)).to eq(12)
    expect(@deck.rank_of_card_at(2)).to eq(14)
  end

  it 'returns only the highest (11+) ranking cards' do
    expect(@deck.high_ranking_cards).to eq([@card1, @card3])
  end

  it 'returns the percentage of cards that are high ranking' do
    expect(@deck.percent_high_ranking).to eq(66.67)
  end

  it 'will remove the top card from the deck' do
    expect(@deck.remove_card).to eq(@card1)
    expect(@deck.cards).to eq([@card2, @card3])
    expect(@deck.high_ranking_cards).to eq([@card3])
    expect(@deck.percent_high_ranking).to eq(50.0)
  end

  it 'will add one card to the bottom of the deck' do
    card4 = Card.new(:club, '5', 5)

    expect(@deck.remove_card).to eq(@card1)
    @deck.add_card(card4)
    expect(@deck.cards).to eq([@card2, @card3, card4])
    expect(@deck.high_ranking_cards).to eq([@card3])
    expect(@deck.percent_high_ranking).to eq(33.33)
  end

end
