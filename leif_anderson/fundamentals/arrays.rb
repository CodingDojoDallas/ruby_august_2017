=begin
  arrays.rb leif anderson 8/1/17
=end

arr1 = [1,2,3,4,5,6,7,8]
arr2 = ['a', 'b', 'c', 'd', 'e']

p arr1.fetch(3)
p arr1.at(3)

p arr1.delete(3)
p arr2.delete(3)

p arr1.reverse
p arr1.length
p arr1.shuffle
p arr1.sort
p arr1.slice(4)

p arr1.values_at(2,4)

p arr1
p arr2
