a = ["Matz", "Diesel", "Maximus", "Diocletian"]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9]

puts a.at(0)
puts b.delete(1)
puts a.reverse
puts b.length
puts a.sort
puts b[2..3]
puts a.shuffle
puts a.join("-")
puts b.insert(1, "3.14159")
puts a.values_at(2,3).join(' and the co-emperor ')
