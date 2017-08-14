require_relative 'apple'
RSpec.describe Apple do
    before(:each) do
        @apple = Apple.new
    end

    it 'has an age attribute with getter and setter methods' do
        @apple.age = 3
        expect(@apple.age).to eq(3)
    end

    it 'has a height attribute with only a getter method and raise error if anyone tries to set the height attribute directly' do
        expect{@apple.height = 5}.to raise_error(NoMethodError)
    end

    it 'has a count attribute with only a getter method and raise error if anyone tries to set the height attribute directly' do
        expect{@apple.count = 10}.to raise_error(NoMethodError)
    end

    it 'has method called year_gone_by that adds one year to the age attribute, increases the height by 10% of its current height and raises the apple count by 2' do
        expect(@apple.year_gone_by).to eq("Apple Stats: Age: 1 ... Height: 1.1 ... Apple Count: 2")
    end

    it 'should not grow apples for the first three years of its life' do
        expect(@apple.year_gone_by).to eq("Apple Stats: Age: 1 ... Height: 1.1 ... Apple Count: 0")
    end

    it 'should have a method called pick_apples that takes all the apples off the tree' do
        @apple.count = 3
        @apple.pick_apples
        expect(@apple.count).to eq(0)
    end

    it 'should not grow apples if the tree is older than 10' do
        @apple.count = 4
        @apple.age = 15
        @apple.year_gone_by
        expect(@apple.count).to eq(4)
    end

end
