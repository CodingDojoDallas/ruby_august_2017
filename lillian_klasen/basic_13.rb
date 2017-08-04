# print 1-255
(1..255).each {|number| puts number}

# print odd numbers 1-255
(1..255).each {|number| puts number if number.odd?}

# print sum
sum = 0
for i in 0..255
    puts sum = sum + i
end

# iterating through an array
[1, 2, 3, 4, 5].each { |i| puts i}

# find max
puts [1,2,3,4,56575].max

# get average
array = [1, 2, 3, 4, 5]
puts array.sum / array.length


# array with odd numbers
arr = []

for i in 0..255
    if i % 2 != 0
        arr.push(i)
end
end
puts arr

# greater than y
count = 0
y = 3
for i in [1,3,5,7]
    if i > y
        y = i
        count = count + 1
    end
end
puts count


# square the values
array = [1,5,10,-2]
array.each {|i| puts i = i * i }

# eliminate negative numbers
array = [1,5,10,-2]
puts array.reject {|i| i < 0 }


# max, min and average
array = [1,5,10,-12]
puts array.max
puts array.min
puts array.sum / array.length


# shifting the values in the array
array = [1,5,10,7,-2]
array.delete(array[0])
puts array


# number to string
array = [-1,-3,2]
array.each {|i| puts "Dojo" if i < 0}
