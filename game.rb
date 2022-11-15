require './player'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def print_score
    puts "P1: #{@player1.lifeCount} vs P2: #{@player2.lifeCount}"
  end

  def play
    while @player1.alive && @player2.alive do
      @player1.ask_question
      print_score
      if @player1.alive
        @player2.ask_question
        print_score
      end
    end

    if @player1.alive
        puts "#{@player1.name}: wins with a score of #{@player1.lifeCount}/#{@player2.lifeCount} "
      elsif @player2.alive
        puts "#{@player2.name}: wins with a score of #{@player1.lifeCount}/#{@player2.lifeCount} "
   end

  end
end