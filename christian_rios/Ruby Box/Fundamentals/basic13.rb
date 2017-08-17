# 1 to 255
# puts (1..255).to_a.join(' ')

#1 to 255 odds
#puts (1..255).select {|a| a%2 != 0}

#1 to 255 sum
# sum = 0
# for i in (1..255)
#   sum = i + sum
#   puts sum
# end

#iterating through an array
# x = [1,3,4,5,7,9,13]
# for i in x
#   puts i
# end

# find max
# x = [1000,-3,4,7,100,-10]
# max = 0
# for i in x
#   if i > max
#     max = i
#   end
# end
# puts max

#get average
# arr = [2,5,7]
# puts arr.inject{ |sum, el| sum + el }.to_f / arr.size

#array with odd numbers from 1-255
# y = []
# for i in (1..255)
#   if i % 2 != 0
#     y.push(i)
#   end
# end
# puts y

#greater than y
# array = [1,3,5,7]
# y = 3
# num = 0
# for i in array
#   if i > y
#     num += 1
#   end
# end
# puts num

#square the values
# a = [1,2,4,5,-4]
# puts a.map.with_index{ | i| i * i }

#eliminate negative numbers
# a = [0,1,2,10,-2]
# a.delete_if { |i| i < 0 }
# puts a

#max, min, average
# array = [1,5,10,7,-2]
# puts array.min, array.max, average: array.inject{ |sum, el| sum + el }.to_f / array.size


# shifting the values in the array
# array = [1,5,10,7,-2]
# puts array.rotate(1).push(0)

# number to string
# array = [-1,-3,2]
# 0.upto(array.length - 1) { |i| array[i] = "dojo" if array[i].odd? }

# puts array.each_index{ |i| array[i] = "dojo" if array[i] < 0 }
