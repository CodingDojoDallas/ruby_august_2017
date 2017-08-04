my_array = ["Dog", "Cat", "Lillian", "Mimi"]

# .at or .fetch
puts my_array.at(4)

# .delete
my_array.delete("Dog")

# .reverse
puts my_array.reverse

# .length
puts my_array.length

# .sort
puts my_array.sort

# .slice
puts my_array.slice(0,2)

# .shuffle
puts my_array.shuffle

# .join
puts my_array.join(" ")

# .insert
puts my_array.insert(0, "Frazierita")

# values_at() -> returns an array with values specified in the param
puts my_array.values_at(2)
