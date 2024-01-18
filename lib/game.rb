class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    puts "Welcome to War! (or Peace) This game will be played with 52 cards."
    puts "The players today are Megan and Aurora."
    puts "Type 'go' to start the game!"
    puts "Enter 'q' to quit."
    puts "------------------------------------------------------------------"
    response = gets.downcase.chomp
    if response == "go"
      go
    elsif response == "q"
      puts "Smell ya later!"
    else
      start
    end
  end

  def go
    counter = 0

    # keep playing unless has_lost?, or counter = 1,000,000, or
    until player1.has_lost? || counter == 1_000_000 || player2.has_lost?
      # increase the counter by 1 each turn.
      counter += 1
      # each time, take a new turn.
      turn = Turn.new(player1, player2)
      winner = turn.winner

      if turn.type == :mutually_assured_destruction
        turn.pile_cards
        puts "Turn #{counter}: *mutually assured destruction* - 6 cards removed from play!"
      elsif turn.type == :war
        turn.pile_cards
        turn.award_spoils(winner)
        puts "Turn #{counter}: WAR - #{winner.name} won 6 cards!"
      # with a :basic turn,
      elsif turn.type == :basic
        turn.pile_cards
        # award the spoils to the #winner.
        turn.award_spoils(winner)
        puts "Turn #{counter}: #{winner.name} won 2 cards!"
      end

      if counter == 1_000_000
        return puts "---- DRAW ----"
      elsif turn.player1.has_lost?
        return puts "*~*~*~* #{player2.name} has won the game! *~*~*~*"
      elsif turn.player2.has_lost?
        return puts "*~*~*~* #{player1.name} has won the game! *~*~*~*"
      end

    end

  end



end
