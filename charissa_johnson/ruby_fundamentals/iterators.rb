arr = ["Tashi", "Ruby", "Roxy", "Cocoa"]

puts arr.any? { |word| word.length > 3 }
puts "********************"
arr.each { |i| print i + "\n" }
puts "********************"

puts arr.collect { |i| i + " 1" }
puts "********************"

puts (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
puts "********************"

puts ["ant", "bear", "cat"].any? { |word| word.length >= 3 } # => true
puts "********************"

puts ["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--
puts "********************"

puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0}
puts "********************"

puts (1..10).find_all { |i| i % 3 == 0 }
puts "********************"

puts (1..10).reject { |i| i % 3 == 0 }
puts "********************"

5.upto(10) { |i| print i, " "}
puts "********************"
