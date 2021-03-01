# make a game that has two players 
#  each player has 3 lives 

# players pick two numbers between 1 - 20 

# the player is promted the question if they get the answer wrong they lose a life 

# if they answer a question wrong they lose a life 
#   this has to run for cl so gets.chomp()


class Player 
  
  def initialize(name, num)
    @name = name
    @lives = num.to_i  
  end

end


class Question
  def do_question
  a = rand(0...20)
  b = rand(0...20)
  correct_answer = a+b
    puts " what is #{a} + #{b}"
    player1_answer = gets.chomp().to_i
  if player1_answer == correct_answer
  return true  
    else
  return  false
    end
  end
end




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

