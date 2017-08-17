class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
	end

	def elevator_pitch
		"Project name #{name} and does #{description}"
	end
end
project1 = Project.new("Project 1", "Description")
puts project1.name
puts project1.elevator_pitch