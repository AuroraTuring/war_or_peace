class Turn
  attr_reader :player1, :player2, :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    if player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
      :basic
    end
  end

  def winner
    players = [player1, player2]
    # if turn type is :basic
    if type == :basic
      players.max_by do |player|
        player.deck.rank_of_card_at(0)
      end
      # then return whichever player has the highest rank first card.

    end
  end

end
