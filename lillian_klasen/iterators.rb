# .any? { |obj| block } => true or false
puts ["girl", "boy", "ninja"].any? { |word| word.length == 3 }
#
#
# .each => calls block once for each element in ruby self, passing that element as a block parameter.
["girl", "boy", "ninja"].each { |word| print word, " "}
#
#
# .collect { |obj| block } => returns a new array with the results of running block once for every element in enum
print (1..4).collect { "lillian" }
#
# .detect/.find => returns the first for which block is not false.
(1..10).detect { |number| puts number % 2 == 0 }
#
# .find_all { |obj| block } or .select { |obj| block } => returns an array containing all elements of enum for which block is not false
puts (2..15).find_all { |number| number % 2 != 0}
#
#
# .reject { |obj| block } => opposite of find_all
puts (1..10).reject { |number| number % 3 == 0}
#
#
# .upto(limit) => iterates block up to the int number
8.upto(30) {|number| print number}
