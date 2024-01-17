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

  end



end
