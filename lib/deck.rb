class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(placement)
    cards[placement].rank
  end

  high_rankers = []

  def high_ranking_cards
    if deck.cards.rank >= 11
      high_rankers << card
    end
  end


end
