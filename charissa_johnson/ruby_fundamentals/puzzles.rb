arr = [3,5,1,2,7,9,8,13,25,32]
sum = 0
puts arr.inject(0){|sum, i| sum + i}
puts "***"
newArr = []
puts newArr.push(arr.find_all {|i| i > 10})
puts "***"

arrNames = ["John", "KB", "Oliver", "Cory", "Matthew", "Chirstopher"]
puts arrNames.shuffle
puts "***"
puts arrNames.reject {|i| i.length < 5}
puts "***"

arrAlpha = ("a".."z").to_a
puts arrAlpha.shuffle.first
puts arrAlpha.shuffle.last
# puts "***"
# puts arrAlpha.first
# puts "***"
# puts arrAlpha.last
if arrAlpha.shuffle.first.include?("a") || arrAlpha.shuffle.first.include?("e") ||arrAlpha.shuffle.first.include?("i") || arrAlpha.shuffle.first.include?("0") || arrAlpha.shuffle.first.include?("u")
	puts "A vowel"
end
puts "***"


randomArray = Array.new(10) {rand(1..10)}
puts randomArray
puts "***"

newRandom = Array.new(10) {rand(55..100)}
puts newRandom.sort
puts "***"
puts newRandom.min
puts "***"
puts newRandom.max
puts "***"

puts randString = (0..5).map {(65 + rand(26)).chr}.join

randStringArr = []
10.times do
randStringArr.push((0..5).map {(65 + rand(26)).chr}.join)
end
puts randStringArr