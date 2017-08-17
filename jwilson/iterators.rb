a = ["My", "Array", 3, 55, true]
puts a.any? { |word| word.class == String }

puts a.each { |word| print word, " is a ", word.class, " | "}

puts (1..5).collect { |x| x*x }.join(" ")
puts (1..10).detect { |x| x % 5 == 0 }