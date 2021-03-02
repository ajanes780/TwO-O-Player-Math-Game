
require './computer'


# build a function that begins the game 
class  Start_Game < Computer
  def initialize
    Computer.new

  end
end

# new_game = Start_Game.new
# p new_game.run_game