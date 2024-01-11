class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(placement)
    cards[placement].rank
  end

  def high_ranking_cards
    high_rankers = []
    cards.each do |card|
      if card.rank >= 11
          high_rankers << card
      end
    end
    high_rankers
  end

  def percent_high_ranking
    # high ranking / all cards = % * 100 = YAY
    p_value = (high_ranking_cards.count.to_f / cards.count) * 100
    p_value.round(2)
  end


end
