#Puzzle 1
# arr1 = [3,5,1,2,7,9,8,13,25,32]
# def puzz1 arr1
#   hash = {sum: arr1.reduce(:+), arr1: arr1.reject! { |i| i <= 10 }}
#   puts "New Array: #{hash[:arr1]} Sum: #{hash[:sum]}"
# end
# puzz1 arr1

#Puzzle 2
# arr1 = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# def puzz2 arr1
#   hash = {ans1: arr1.shuffle { |i| print "#{i} " }, ans2: arr1.find_all { |i| i.length > 5 }}
#   puts "Puzzle 2: Part 1 #{hash[:ans1]} Part 2: #{hash[:ans2]}"
# end
# puzz2 arr1

#Puzzle 3
# arr3 = ["a", "b", "c", "d", "e", "f", "g",
# 		"h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
# 		"u", "v", "w", "x", "y", "z"]
# def puzz3 arr3
#   newArr = arr3.shuffle!
#   puts "Last letter: #{newArr.last}, first letter:#{newArr.first}"
#   puts "First letter is a vowel" if ["a", "e", "i", "o", "u"].include? newArr.first
# end
# puzz3 arr3

#Puzzle 4
# arr1 = [rand(55..100), rand(55..100), rand(55..100)]
# puts arr1

#Puzzle 5
# arr1 = []
# 10.times {arr1 << rand(55..100)}; arr1.sort!
# print arr1; puts " Min:#{arr1.min}, Max:#{arr1.max}"

# Puzzle 6
# str = ""
# 5.times {str << (65 + rand(26)).chr}
# puts str

# Puzzle 7
# array = [];
# 10.times do
#   str = ""
#   5.times {str << (65 + rand(26)).chr}
#   array << str
# end
# puts array
