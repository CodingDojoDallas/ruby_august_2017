# Print 1-255
# (1..255).each { |num| puts num }

#Print Odd in 1-255
# (1..255).each { |num| puts num if num.odd? }

#Print Sum
# sum = 0
# (0..255).each { |num| puts "New Number: #{num} Sum: #{sum+=num} " }

#Iterate in Array
# X=[1,3,5,7,9,13]
# X.each { |num| puts num }

#Find Max
# Y = [-5, -2, 6,1, 5, 10, 0 ]
# puts Y.max

#Find Average
# arr = [2,10,3]
# puts arr.reduce(:+).to_f / arr.length

#Array with Odd Numbers
# arr = []
# (1..255).each {|num| arr << num if num.odd?}
# p arr

#Greater than Y
# y = 4
# puts Y.count { | num | num > y }

#Square the values
# Z = [1,5,10,-2]
# Z.map! {|num| num*num}
# p Z

#Eliminate Neg Numbers
# Z.each_index {|i| Z[i]= 0 if Z[i] < 0 }
# p Z

#Min, Max, Average
# p Z.min
# p Z.max
# p Z.reduce(:+)/Z.length.to_f

#Shifting the Values
# Z.rotate![Z.length-1]=0
# p Z

#Number to String
# arr=[-1,-3,2]
# arr.each_index {|i| arr[i] = "Dojo" if arr[i] < 0}

# p arr