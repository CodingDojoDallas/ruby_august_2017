# class User
#     def first_name=(name)
#         @first_name: name
#     end

#     def first_name
#         return @first_name
#     end

# end

class User
    attr_accessor :first_name
    attr_accessor :last_name
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end
end
user = User.new

user.first_name = "Jon"
user.last_name = "Wilson"

puts user.first_name + " " + user.last_name




class CodingDojo 
  @@no_of_branches = 0
  def initialize(id, name, address) 
    @branch_id = id 
    @branch_name = name 
    @branch_address = address 
    @@no_of_branches += 1 
    puts "Created branch #{@@no_of_branches}"
  end
  def hello 
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}" 
    puts "Branch Address: #{@branch_address}"
  end
  def self.num_of_branches
    @@no_of_branches
  end
end
seattle = CodingDojo.new(1, "Seattle", "123 Seattle Avenue")
san_jose = CodingDojo.new(2, "San Jose", "456 San Jose Boulevard")
burbank = CodingDojo.new(3, "Burbank", "789 Burbank Street")