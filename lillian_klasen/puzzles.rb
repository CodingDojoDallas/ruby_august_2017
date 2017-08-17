# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# array = [3,5,1,2,7,9,8,13,25,32]
#
# puts array.sum
#
# array.each {|i| puts i if i > 10}


# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
#
# puts array.shuffle

# array.each {|name| puts name if name.length > 5}


# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
# array = ("a".."z").to_a
# puts array.shuffle.last + " " + array.shuffle.first
#
# letter = array.shuffle.first
# if /[aeiou]/.match(letter)
#     puts "This is a vowel"
# end


# Generate an array with 10 random numbers between 55-100.
# puts array = ()
# puts array = Array.new(10) { rand(55..100) }

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
# array = Array.new(10) { rand(55..100) }
# array.sort
# puts array.min
# puts array.max

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
str = ""
5.times { str << rand(65..90).chr }
puts str


# Generate an array with 10 random strings that are each 5 characters long

string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
puts string_array
