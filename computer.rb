class Computer

  def initialize()
    @player1 = Player.new("player1", 3)
    @player2 = Player.new("player2", 3)
    @current_player = @player1  
    end

  def current_player
    puts "current player is @current_player"
  end 

  def run_game
    questioner = Question.new

  while @player1.lives > 0 &&  @player2.lives > 0
    is_correct_answer = questioner.do_question
      if is_correct_answer
      puts "winner"__
    elsif 
        puts " wrong answer" 
        @current_player.lives -= 1
      end
      if  @current_player.name == "player2"
        @current_player = @player1 
        else
        @current_player = @player2
        end      
    end
  end
end

