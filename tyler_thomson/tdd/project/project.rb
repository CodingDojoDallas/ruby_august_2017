class Project
  attr_accessor :name, :description, :owner, :tasks
  def initialize(name, description, owner, tasks)
    @name = name
    @description = description
    @owner = owner
    @tasks = tasks
  end

  def elevator_pitch
    "#{@name}, #{@description}, #{@owner}, #{@tasks}"
  end

  def add_tasks
    @tasks = @tasks.push('task')
  end

  def tasks
    @tasks = @tasks
  end
end
