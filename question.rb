class Question
  attr_accessor :question, :answer

  def initialize
    @x = rand(1...20)
    @y = rand(1...20)
    self.question = "What does #{@x} plus #{@y} equal?"
    self.answer = @x + @y
  end
end