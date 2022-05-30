class Game 
  attr_accessor :turn
  puts "Wanna play a game?"

  def initialize
    turn = 0
  end

  def new_turn
    puts "------ NEW TURN -----"
  end

  def answer
    print '> '
  end

  def correct 
    puts 'YES! You are correct!'
  end

  def wrong
    puts "Seriously? No!"
  end

  def game_over
    puts "---- GAME OVER -----"
    puts "Good bye!"
  end
end
