require './lib/card'
require './lib/deck'
require './lib/player'


RSpec.describe Deck do
  before(:each) do
    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @deck = Deck.new([@card1, @card2, @card3])
    @player = Player.new('Clarisa', @deck)
  end

  it 'exists' do
    expect(@player).to be_a(Player)
  end

  it 'has attributes' do
    expect(@player.name).to eq("Clarisa")
    expect(@player.deck).to eq(@deck)
    # expect(@player.deck).to be_a(Deck)
  end

  it 'starts off not losing' do
    expect(@player.has_lost?).to be false
    # expect(@player.deck.remove_card).to eq()
  end


end
