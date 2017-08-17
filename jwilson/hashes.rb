hash = {first_name: "Coding", last_name: "Dojo"}
hash.delete :last_name
puts hash 

empty = {}
puts empty.empty?

hash = {first_name: "Coding", last_name: "Dojo"}
puts hash.has_key? :first_name 
puts hash.has_key? "first_name" 

puts hash.has_value? "Coding"
puts hash.has_value? "Bootcamp" 