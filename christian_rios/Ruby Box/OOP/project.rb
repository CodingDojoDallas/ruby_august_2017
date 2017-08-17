class Project
  # your code here
  def initialize(name, description)
    @project_name = name
    @project_description = description
    puts "#{@project_name}"
  end
  def elevator_pitch
    puts "#{@project_name} #{@project_description}"
  end
end
project1 = Project.new("Project 1", "Description 1")
project1.elevator_pitch  # => "Project 1, Description 1"
