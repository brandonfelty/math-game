require './question'
require './game'
require './player'

p1 = Player.new(1)
p2 = Player.new(2)
g1 = Game.new()

turn = 0

while (!p1.lose? && !p2.lose?) do 
  player = (turn % 2 == 0) ? p1 : p2
  g1.new_turn
  q = Question.new()
  puts "#{player.name}: #{q.question}"
  g1.answer

  answer = gets.chomp.to_i

  if answer == q.answer
    g1.correct
    puts "#{p1.name}: #{p1.score}/3 vs #{p1.name}: #{p2.score}/3"
  else 
    player.score -= 1
    g1.wrong
    puts "#{p1.name}: #{p1.score}/3 vs #{p1.name}: #{p2.score}/3"
  end

  turn += 1
end

if (p1.score == 0)
  puts "#{p2.name} wins with a score of #{p2.score}/3"
  g1.game_over
else 
  puts "#{p1.name} wins with a score of #{p1.score}/3"
  g1.game_over
end
