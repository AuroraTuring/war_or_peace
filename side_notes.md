A Player is initialized with a deck, and can determine if they have lost the game.


pry(main)> player.name
#=> "Clarisa"

pry(main)> player.deck
#=> #<Deck:0x007f9cc396bdf8 @cards=[#<Card:0x007f9cc3a73a98...>, #<Card:0x007f9cc3a03720...>, #<Card:0x007f9cc3a44c98...>]>

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a73a98 @rank=12, @suit=:diamond, @value="Queen">

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a03720 @rank=3, @suit=:spade, @value="3">

pry(main)> player.has_lost?
#=> false

pry(main)> player.deck.remove_card
#=> #<Card:0x007f9cc3a44c98 @rank=14, @suit=:heart, @value="Ace">

pry(main)> player.has_lost?
#=> true

pry(main)> player.deck
#=> #<Deck:0x007f9cc396bdf8 @cards=[]>
