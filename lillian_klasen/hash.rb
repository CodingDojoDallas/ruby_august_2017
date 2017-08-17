# .delete(key) => deletes and returns a value associated with the key

full_name = {:first_name => "lillian", :middle_name => "marie", :last_name => "klasen"}

full_name.delete(:middle_name)

puts full_name

# .empty? => returns true if hash contains no key-value pairs

full_name = {:first_name => "lillian", :middle_name => "marie", :last_name => "klasen"}

puts full_name.empty?


# .has_key?(key) => true or false
full_name = {:first_name => "lillian", :middle_name => "marie", :last_name => "klasen"}

puts full_name.has_key?(:dog)
puts full_name.has_key?(:last_name)


# .has_value?(value) => true or false
full_name = {:first_name => "lillian", :middle_name => "marie", :last_name => "klasen"}

puts full_name.has_value?("lillian")
