require_relative 'project'
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'John Doe', [])
    @project2 = Project.new('Project 2', 'description 2', 'Jane Doe', [])
  end

  it 'has a getter and setter for the name attribute' do
    @project1.name = 'Changed Name'
    expect(@project1.name).to eq("Changed Name")
  end

  it 'has a getter and setter for the owner attribute' do
    @project1.owner = "Changed Owner"
    expect(@project1.owner).to eq("Changed Owner")
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1, John Doe, []")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2, Jane Doe, []")
  end

  it 'has a method add_tasks to add a task to tasks array' do
    expect(@project1.add_tasks).to eq(['task'])
    expect(@project2.add_tasks).to eq(['task'])
  end

  it 'has a method tasks to return the tasks array' do
    expect(@project1.tasks).to eq([])
    expect(@project2.tasks).to eq([])
  end
end
