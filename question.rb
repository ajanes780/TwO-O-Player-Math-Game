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
