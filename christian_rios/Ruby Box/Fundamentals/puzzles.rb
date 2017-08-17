# arr = [3,5,1,2,7,9,8,13,25,32]
# puts arr.inject{ |sum, i| sum + i }
# puts arr.reject { |i| i < 10 }

# arr = [ "John", "KB", "Oliver", "Cory", "Matthew", "Christopher" ]
# puts arr.shuffle.join(', ')
# puts arr.reject{ |i| i.length <= 5}

# arr = ('a'..'z').to_a
# shuffled = arr.shuffle
# puts shuffled
# puts arr.last
# puts "#{shuffled.first} is a vowel" if ["a","e","i","o","u"].include? shuffled.first


# puts Array.new(10) { rand(55..100) }


# arr = Array.new(10) { rand(55..100) }.sort
# puts arr
# puts arr.min
# puts arr.max

string_array = []
10.times do
  str = ""
  5.times { str << rand(65..90).chr }
  string_array << str
end
puts string_array
