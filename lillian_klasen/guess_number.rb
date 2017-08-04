def guess_number(guess)
    number = 25

    if guess < number
        puts "Guess was too low!"


    elsif guess > number
        puts "Guess was too high!"


    else
        puts "You got it!"
    end
end

# guess_number 100
# guess_number 5
guess_number 25
