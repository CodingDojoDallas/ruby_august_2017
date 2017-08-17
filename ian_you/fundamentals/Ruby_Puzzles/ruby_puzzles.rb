#1. 
# X=[3,5,1,2,7,9,8,13,25,32]

# def Number1 arr
#     p "Sum: #{X.reduce(:+)}"
#     return X.reject { |num| num unless num > 10 }
# end

# p Number1 X


#2
# Y=['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher', 'Shuffle']

# def Number2 arr
#     p Y.shuffle
#     return Y.select {|name| name if name.length > 5}
# end

# p Number2 Y

#3

# arr = ('a'..'z').to_a
# arr.shuffle!
# p "Last letter: "+ arr.last
# p "First letter: "+ arr.first
# vowels = ['a','e','i','o','u']
# p "First letter is vowel" if vowels.index(arr.first)

#4
# p (55..100).to_a.sample(10)

#5
# arr = (55..100).to_a
# p newArr = arr.sample(10).sort!
# p "Min: " + newArr.first.to_s
# p "Max:" + newArr.last.to_s

#6

# str = ""
# 5.times { str << (65+rand(26)).chr }
# p str

#7
# arr = []
# 10.times do
#     str = ""
#     5.times { str << (65+rand(26)).chr }
#     arr << str
# end
# p arr
