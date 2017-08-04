a = ["Jonathon", "///////", "Wilson", "\\\\\\\\\\\\\\"]
x = a.reverse
puts x.slice(3)

puts a.slice(1,3)
puts a.at(0)
puts x.fetch(2)

x.delete(x[0])

puts x
puts a.length
puts a.sort { |x,y| x <=> y }
puts a.reverse
puts a.shuffle

a.insert(3,"says: ", "The", "Docs", "Help", "//////")
puts a.join("-") * 1

puts a.values_at(0,2).join(" 'Da-Man' ")