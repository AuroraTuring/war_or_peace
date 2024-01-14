# turn type :war

pry(main)> winner = turn.winner
#=> #<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">

pry(main)> turn.pile_cards

pry(main)> turn.spoils_of_war
#=> [#<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>]

pry(main)> turn.award_spoils(winner)

pry(main)> player1.deck
#=> #<Deck:0x007fc42a05a258 @cards=[#<Card:0x007fc42a1580d8...>]>

pry(main)> player2.deck
#=> #<Deck:0x007fc42a248678 @cards=[#<Card:0x007fc42a1b4c98...>, #<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>]>
