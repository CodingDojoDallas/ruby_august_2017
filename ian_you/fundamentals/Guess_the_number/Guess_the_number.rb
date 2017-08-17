BEGIN {
    puts "-----------------------"
}

END {
    puts "-----------------------"
}

def guess_number (guess)
    number = 25
    puts "You got it" if guess == number
    puts "Guess was too high!" unless guess <= number
    puts "Guess was too low!" unless guess >= number
end

guess_number (10)

guess_number (30)

guess_number (25)

