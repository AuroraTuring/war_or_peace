# turn type :war
pry(main)> require './lib/card'
#=> true
pry(main)> require './lib/deck'
#=> true
pry(main)> require './lib/player'
#=> true
pry(main)> require './lib/turn'
#=> true

pry(main)> card1 = Card.new(:heart, 'Jack', 11)    
#=> #<Card:0x007fc42a170fe8 @rank=11, @suit=:heart, @value="Jack">
pry(main)> card2 = Card.new(:heart, '10', 10)    
#=> #<Card:0x007fc42a0f1b58 @rank=10, @suit=:heart, @value="10">
pry(main)> card3 = Card.new(:heart, '9', 9)    
#=> #<Card:0x007fc42aa85a98 @rank=9, @suit=:heart, @value="9">
pry(main)> card4 = Card.new(:diamond, 'Jack', 11)    
#=> #<Card:0x007fc42a205508 @rank=11, @suit=:diamond, @value="Jack">
pry(main)> card5 = Card.new(:heart, '8', 8)    
#=> #<Card:0x007fc42a2149e0 @rank=8, @suit=:heart, @value="8">
pry(main)> card6 = Card.new(:diamond, 'Queen', 12)    
#=> #<Card:0x007fc42a1e4790 @rank=12, @suit=:diamond, @value="Queen">
pry(main)> card7 = Card.new(:heart, '3', 3)    
#=> #<Card:0x007fc42a1b4c98 @rank=3, @suit=:heart, @value="3">
pry(main)> card8 = Card.new(:diamond, '2', 2)    
#=> #<Card:0x007fc42a1580d8 @rank=2, @suit=:diamond, @value="2">

pry(main)> deck1 = Deck.new([card1, card2, card5, card8])    
#=> #<Deck:0x007fc42a05a258 @cards=[#<Card:0x007fc42a170fe8...>, #<Card:0x007fc42a0f1b58...>, #<Card:0x007fc42a2149e0...>, #<Card:0x007fc42a1580d8...>]>

pry(main)> deck2 = Deck.new([card4, card3, card6, card7])    
#=> #<Deck:0x007fc42a248678 @cards=[#<Card:0x007fc42a205508...>, #<Card:0x007fc42aa85a98...>, #<Card:0x007fc42a1e4790...>, #<Card:0x007fc42a1b4c98...>]>

pry(main)> player1 = Player.new("Megan", deck1)    
#=> #<Player:0x007fc42a113000 @deck=#<Deck:0x007fc42a05a258...>, @name="Megan">

pry(main)> player2 = Player.new("Aurora", deck2)    
#=> #<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">

pry(main)> turn = Turn.new(player1, player2)    
#=> #<Turn:0x007fc42a20d488 @player1=#<Player:0x007fc42a113000 @deck=#<Deck:0x007fc42a05a258...>, @name="Megan">, @player2=#<Player:0x007fc42aab6b70 @deck=#<Deck:0x007fc42a248678...>, @name="Aurora">, @spoils_of_war=[]>

pry(main)> turn.type
#=> :war

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
