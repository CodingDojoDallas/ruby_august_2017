# class Project
#     attr_accessor :name, :desc

#     def initialize(name, desc)
#         @name = name
#         @desc = desc
#     end
#     def elevator_pitch
#         return "#{@name}, Description: #{@desc}"
#     end
# end

# p1 = Project.new("Project 1", "P1's Description")

# p p1.elevator_pitch

def my_method(arg1, arg2, arg3)
    return "#{arg1}, #{arg2}, #{arg3}"
end
args = [2,3]
p my_method(10, *args)