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

  @@turn = 0;
  def start(p1, p2)
    player = (@@turn % 2 == 0) ? p1 : p2
    puts "----- NEW TURN -----"
    q = Question.new
    puts "#{player.name}: #{q.question}"
    print '> '

    answer = gets.chomp.to_i
    if answer == q.answer
      puts 'YES! You are correct!'
    else 
      player.score -= 1
      puts "Seriously? No!"
    end
    
    if (p1.score == 0)
      puts "#{p2.name} wins with a score of #{p2.score}/3"
      puts "---- GAME OVER -----"
      puts "Good bye!"
    else 
      puts "#{p1.name}: #{p1.score}/3 vs #{p1.name}: #{p2.score}/3"
      start(p1, p2)
  end

end
