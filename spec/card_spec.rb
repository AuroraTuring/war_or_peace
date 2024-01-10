require 'rspec'
require './lib/card'

RSpec.describe Card do
  it "exists" do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:heart, 'Jack', 11)

    expect(card1).to be_an_instance_of(Card)
  end

  it "has readable attributes" do
    card = Card.new(:diamond, 'Queen', 12)

    expect(card1.suit).to eq(:diamond)
    expect(card1.value).to eq('Queen')
    expect(card1.rank).to eq(12)
  end
end



expect(card.suit).to eq(:heart)
expect(card.value).to eq("Jack")
expect(card.rank).to eq(11)
