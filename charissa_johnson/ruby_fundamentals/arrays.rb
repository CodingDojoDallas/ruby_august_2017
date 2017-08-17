a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

puts a.at(0)
puts a.fetch(1)
puts b.reverse
puts "********************"
puts b.length
puts "********************"
puts a.sort
puts "********************"
puts a.slice(2)
puts "********************"
puts a.shuffle
puts "********************"
puts a.join(", ")
puts "********************"
puts a.insert(1,4)
puts "********************"
puts a.values_at(1, 4)