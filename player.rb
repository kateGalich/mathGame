class Player
  def initialize(name)
    @name = name
    @lifeCount = 3
  end
  attr_reader :lifeCount
  attr_reader :name

  def ask_question
    a = rand 1..20
    b = rand 1..20
    answer = a + b
    puts "#{@name}: What does #{a} + #{b} equal?"
    user_answer = gets.chomp.to_i

      if answer!= user_answer
        puts "#{@name}: Seriously? No!"
        @lifeCount=@lifeCount-1
      else  
        puts "#{@name}: Yes! You are correct."

      end
  end

  def alive
    return @lifeCount > 0
  end


end