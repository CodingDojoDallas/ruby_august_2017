# # # Prints 1-255
# # (1..255).each { |i| print i, " "}

# # # Odd Numbers
# # (1..255).each { |i| print i, " " if i.odd? }

# # # Sum
# # (1..255).each { |i| print "| New Number: ", i, " | Sum: ", i+i, " |"}

# # # Iterate Through Array
# # x = [1,3,5,7,9,13]
# # x.each { |i| print i, " " }

# # # Max
# # puts x.max
# # puts [3,2,5,10,325].max

# # # Average
# # y = [3,5,9,19]
# # puts y.reduce(:+) / y.length.to_f

# # # Array w/ Odd Numbers
# # z = []
# # (1..255).each {|x| z.push(x) if x.odd? }
# # puts z

# # # Greater than Y

# # ya = 3
# # puts [1,3,5,9].count { |x | x > ya }

# # # No Negatives
# arr = [1,5,10,-2]
# # puts arr.each_index { |x| arr[x] = 0 if arr[x] < 0 }

# # Max Min Avg
# hash = { :max => arr.max, :min => arr.min, :avg => arr.reduce(:+) / arr.length.to_f }
# puts hash

# # Shifting Values in Array
new_arr = [10,20,30,40,50]
new_arr.rotate!(1)[new_arr.length-1] = 0
puts new_arr

# # Number to String
# puts arr.each_index { |x| arr[x] = "Dojo" if arr[x] < 0 }


