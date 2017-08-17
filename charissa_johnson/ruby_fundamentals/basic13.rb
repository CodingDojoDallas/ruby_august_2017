#Print all numbers 1-255
#(1..255).each {|i| puts i}

#Print odd numbers between 1-255
#puts (1..255).select {|elem| elem.odd?}

#Print sum
# for i in 1..255
# 	sum = i + i
# 	puts "New number: #{i} sum: #{sum}"
# end

#Iterating through an array
# [1,3,5,7,9,13].each {|i| puts i}

#Find max
# arr = [5, 12, 3]
# puts arr.max

#Get average
# arr = [5, 6, 7, 8]
# puts arr.inject{|sum, i| sum + i}.to_f / arr.size

# Array with odd numbers
# arr = [1,2,3,4,5,6,7,8,9,10]
# newArr = []
# puts newArr.push(arr.select {|elem| elem.odd?})

#Greater than Y
# arr = [1,3,5,7]
# y = 3
# puts arr.find_all {|i| i > y}

#Sqaure the values
# arr = [1,5,10,-2]
# puts arr.collect {|i| i*i}

#Eliminate negative numbers
# arr = [1,5,10,-2]
# puts arr.find_all {|i| i > 0}

#Max, min, average
# arr = [1,3,5,7,9]
# sum = 0
# puts arr.max
# puts arr.min
# puts arr.inject{|sum, i| sum + i}.to_f / arr.size

#Shifting the values in the array
# arr = [1,5,10,7,-2]
# puts arr.rotate(1)

#Number to string
arr = [-1,-3,2]
puts arr.each_index {|i| arr[i] = "Dojo" if arr[i] < 0}
