=begin
  guess.rb leif anderson 8/1/17
=end

def guess_number guess
  number = 7
  if guess < number
    p "You guessed too low ..."
  elsif guess > number
    p "You guessed too high .."
  else
    p ">>> WINNING <<<"
  end
end

p "Guess a number between 1 and 10"

guess_number(1)
guess_number(10)
guess_number(7)
