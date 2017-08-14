class Project
    attr_accessor :name, :description, :owner, :tasks

  def initialize(name, description, owner)
      @name = name
      @description = description
      @owner = owner
      @tasks = []
  end

  def elevator_pitch
      "#{@name}, #{@description}, #{@owner}"
  end

  def tasks
     return "Tasks: #{@tasks}"
  end

  def add_tasks(task)
    @tasks << task
  end
end

project1 = Project.new("Project 1", "Description 1", "John Doe")
project1.add_tasks("Add this to the list")
project1.tasks
