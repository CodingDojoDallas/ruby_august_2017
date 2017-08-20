require_relative 'project'
RSpec.describe Project do
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1', "john doe")
        @project2 = Project.new('Project 2', 'description 2', "lillian klasen")
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq("Changed Name")
    end

    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1, john doe")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2, lillian klasen")
    end

    it 'has a getter and setter for owner attribute' do
        @project2.owner = "Albert Einstein"
        expect(@project2.owner).to eq("Albert Einstein")
    end

    it 'add task and show tasks for a project' do
        @project1.add_tasks("Add this to the list")
        expect(@project1.tasks).to eq('Tasks: ["Add this to the list"]')
    end

end
