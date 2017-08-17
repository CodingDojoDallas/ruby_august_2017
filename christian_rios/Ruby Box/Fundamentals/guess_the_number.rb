def guess_number guess
  number=25
  unless guess == number

    if guess > number
      puts "Guess was too high!"
    elsif guess < number
      puts "Guess was too low!"
    end
  else
    puts "You got it!"
  end
end
guess_number 2
guess_number 26
guess_number 25
