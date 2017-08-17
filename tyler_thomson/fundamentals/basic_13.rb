#Print 1-255
# (1..255).each { |i| puts i }
#Print odd numbers between 1-255
# puts (1..255).find_all { |i| i % 2 != 0 }
#Print Sum
# sum = 0
# (0..255).each { |i| puts "New Number: #{i} Sum: #{sum += i}"}
# Iterating through array
# def myIter arr1
#   arr1.each { |i| puts i }
# end
# myIter [1, 4, 9]
#Find Max
# def findMax arr1
#   arr1.max
# end
# puts findMax [1, 4, 9]
#Get Average
# def findAvg arr1
#   sum = 0
#   arr1.each { |i| sum += i }
#   avg = sum.to_f / arr1.length.to_f
# end
# puts findAvg [1, -4.5, 9]
#Array with Odd Numbers
# def oddArr
#   y = Array.new
#   (1..255).step(2) { |i| y.push(i)}
#   return y
# end
# print oddArr
#Greater than Y
# def gTY arr1, y
#   arr1.count { |i| i > y  }
# end
# puts gTY [1, 3, 5, 7, 9], 6
#Square the Values
# def square arr1
#   arr1.collect! { |i| i * i }
# end
# print square [2, 5, 9, 10]
#Eliminate Negative numbers
# def elim arr1
#   arr1.map! { |i| i < 0 ? 0 : i }
# end
# puts elim [1, 6, 0, -1, 0, 9, -3]
# Shifting the Values in the Array


#Min, Max, and Average
# def mMA arr1
#arr = [1, 5, 10, -2]
# { max: arr.max, min: arr.min, average: arr.reduce(:+) / arr.length.to_f }
# end

#Shifting Values in the Array
# def shift arr1
#   arr1.shift; arr1.push(0)
#   return arr1
# end
# print shift [1, 6, 0, -1, 0, 9, -3]

#Number to String
# def nTS arr1
#   arr1.map! { |i| i < 0 ? 'Dojo' : i }
# end
# print nTS [1, 6, 0, -1, 0, 9, -3]
