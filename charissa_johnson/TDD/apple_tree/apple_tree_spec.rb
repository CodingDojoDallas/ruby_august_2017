require_relative 'apple_tree'
RSpec.describe AppleTree do 
	before(:each) do 
		@tree = AppleTree.new
	end
	it "has a getter and setter for age attribute" do 
		@tree.age = 0
		expect(@tree.age).to eq(0)
	end

	it "has a getter for the height attribute" do 
		expect(@tree.height).to eq(0)
	end

	it "raises an error when the user attempts to set the heigt attribute directly" do 
		expect{ @tree.height = 1 }.to raise_error(NoMethodError)
	end

	it "has a getter for the apple count attribute" do 
		expect(@tree.apple_count).to eq(0)
	end

	it "raises an error when the user attempts to set the apple_count attribute directly" do 
		expect{ @tree.apple_count = 1 }.to raise_error(NoMethodError)
	end

	context "should have a method for year_gone_by" do 
		before(:each) do 
			@tree.year_gone_by
		end
	end

	it "adds one year to the age atribute" do 
		expect(@tree.age).to eq(1)
	end
end