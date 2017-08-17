def guess_number guess
  number = 25
  puts "You got it" unless guess != number
  puts "Too low" unless guess >= number
  puts "Too high" unless guess <= number
end

guess_number 1
guess_number 35
guess_number 25
