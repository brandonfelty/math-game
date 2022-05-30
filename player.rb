class Player 
  attr_reader :name
  attr_accessor :score

  def initialize(number)
    @name = "Player #{number}"
    @score = 3
  end

  def lose?
    (self.score == 0) ? true : false
  end
end