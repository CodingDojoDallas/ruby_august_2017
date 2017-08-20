require 'rails_helper'

RSpec.describe User do
  context "With valid attributes" do 
  	it "should save" do 
  		user = User.new(
  			first_name: "Diana",
  			last_name: "Prince",
  			email: "WonderWoman@gmail.com"
  		)
  		expect(user).to be_valid
  	end
  end

  	context "With invalid attributes" do 
  		it "should not save if the first_name field is blank" do 
  			user = User.new(
  				first_name: "",
  				last_name: "Prince",
  				email: "WonderWoman@gmail.com"
  			)
  			expect(user).to be_invalid
  		end

  		it "should not save if the last_name firls is blank" do 
  			user = User.new(
  				first_name: "Diana",
  				last_name: "",
  				email: "WonderWoman@gmail.com"
  			)
  			expect(user).to be_invalid
  		end

  		it "should not save if email already exists" do 
  			user1 = User.create(
  				first_name: "Diana",
  				last_name: "Prince",
  				email: "WonderWoman@gmail.com"
  			)

  			user2 = User.new(
  				first_name: "Bruce",
  				last_name: 'Wayne',
  				email: "WonderWoman@gmail.com"
  			)
  			expect(user2).to be_invalid
  		end

  		it "should contain a valid email" do 
  			user = User.new(
  				first_name: "Diana",
  				last_name: "Prince",
  				email: "WonderWomangmail.com"
  			)
  			expect(user).to be_invalid
  		end
  	end
end
