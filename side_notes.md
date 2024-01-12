#turn type :basic

pry(main)> 
#=> #<Card:0x007fa3edaa0df0 @rank=11, @suit=:heart, @value="Jack">
pry(main)>   
#=> #<Card:0x007fa3eda519a8 @rank=10, @suit=:heart, @value="10">
pry(main)> 
#=> #<Card:0x007fa3ed98d9b8 @rank=9, @suit=:heart, @value="9">
pry(main)>    
#=> #<Card:0x007fa3ee14ef80 @rank=11, @suit=:diamond, @value="Jack">
pry(main)>   
#=> #<Card:0x007fa3edb263d8 @rank=8, @suit=:heart, @value="8">
pry(main)>   
#=> #<Card:0x007fa3eda3e1f0 @rank=12, @suit=:diamond, @value="Queen">
pry(main)>  
#=> #<Card:0x007fa3edad1cc0 @rank=3, @suit=:heart, @value="3">
pry(main)>    
#=> #<Card:0x007fa3eda89308 @rank=2, @suit=:diamond, @value="2">

pry(main)> 
#=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3eda519a8...>, #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>]>

pry(main)> 
#=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ed98d9b8...>, #<Card:0x007fa3ee14ef80...>, #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>

pry(main)>     
#=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

pry(main)>    
#=> #<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">

pry(main)>   
#=> #<Turn:0x007fa3edb25d20 @player1=#<Player:0x007fa3edae29d0..., @name="Megan">, @player2=#<Player:0x007fa3ed9e6568..., @name="Aurora">, @spoils_of_war=[]>











pry(main)> turn.player1
#=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

pry(main)> turn.player2
#=> #<Player:0x007fa3ed9e6568 @deck=#<Deck:0x007fa3ee11ee48...>, @name="Aurora">

pry(main)> turn.spoils_of_war
#=> []

pry(main)> turn.type
#=> :basic

pry(main)> winner = turn.winner
#=> #<Player:0x007fa3edae29d0 @deck=#<Deck:0x007fa3eda472c8...>, @name="Megan">

pry(main)> turn.pile_cards

pry(main)> turn.spoils_of_war
#=> [#<Card:0x007fa3edaa0df0 @rank=11, @suit=:heart, @value="Jack">, #<Card:0x007fa3ed98d9b8 @rank=9, @suit=:heart, @value="9">]

pry(main)> turn.award_spoils(winner)

pry(main)> player1.deck
#=> #<Deck:0x007fa3eda472c8 @cards=[#<Card:0x007fa3eda519a8...>, #<Card:0x007fa3edb263d8...>, #<Card:0x007fa3eda89308...>, #<Card:0x007fa3edaa0df0...>, #<Card:0x007fa3ed98d9b8...>]>
pry(main)> player2.deck
#=> #<Deck:0x007fa3ee11ee48 @cards=[#<Card:0x007fa3ee14ef80...>, #<Card:0x007fa3eda3e1f0...>, #<Card:0x007fa3edad1cc0...>]>
