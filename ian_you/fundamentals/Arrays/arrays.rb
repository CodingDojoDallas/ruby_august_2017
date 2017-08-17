BEGIN {
    puts "---------------------"
}

END {
    puts "---------------------"
}

a = ["Matz", "Cody", "Guido", "Choi", "Dojo", "John"]
b = [2,1,9,4,5,7,6,8,10,3]

# puts ".at or .fetch"
# puts ".at(0)"
# puts a.at(0)
# puts ".fetch(100, 'Out of index')"
# puts b.fetch(100, 'Out of index')

# puts 'a.delete("Cody")'
# a.delete("Cody")
# puts a

# puts "b.reverse"
# puts b.reverse
# puts a.reverse

# puts a.length
# puts b.length

# puts a.sort
# puts b.sort

# a.slice!(3, 3)
# puts a

# print a.shuffle
# print b.shuffle

# puts a.join(' ++ ')
# puts b.join(' -- ')

# puts a.insert(0, "Matt")
# puts b.insert(-1, 999)

puts a.values_at(3...6)