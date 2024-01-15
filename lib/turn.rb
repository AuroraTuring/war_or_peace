class Turn
  attr_reader :player1, :player2, :spoils_of_war, :players

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
    @players = [player1, player2]
  end

  def type
    if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) == player2.deck.rank_of_card_at(2)
      :mutually_assured_destruction
    elsif player1.deck.rank_of_card_at(0) == player2.deck.rank_of_card_at(0)
      :war
    end
  end

  def winner
    # if turn type is :basic
    if type == :basic
      # then return whichever player has the highest rank first card.
      players.max_by do |player|
        player.deck.rank_of_card_at(0)
      end
    elsif type == :war
      players.max_by do |player|
        player.deck.rank_of_card_at(2)
      end
    else
      "No Winner"
    end
  end

  def pile_cards
    # if type is basic
    if type == :basic
      # players will send the top card to spoils_of_war
      players.each do |player|
        spoils_of_war << player.deck.cards.shift
      end
      elsif type == :war
      players.each do |player|
        @spoils_of_war += player.deck.cards.shift(3)
      end
    end
  end

  def award_spoils(winner)
    winner.deck.cards += spoils_of_war
    spoils_of_war.clear
  end

end
