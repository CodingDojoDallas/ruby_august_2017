require 'rails_helper'

RSpec.describe User, type: :model do
context "With valid attributes" do
  it 'should save' do
      user = User.new(
          first_name: "shane",
          last_name: 'chang',
          email: "schang@codingdojo.com"
      )

      expect(user).to be_valid
  end

  it 'should save' do
      user = User.new(
          first_name: "lillian",
          last_name: 'klasen',
          email: "lklasen@codingdojo.com"
      )

      expect(user).to be_valid
  end

  it 'should save' do
      user = User.new(
          first_name: "lillian",
          last_name: "klasen",
          email: "lillian.klasen@gmail.com"
      )
      expect(user).to be_valid
  end

  it 'should save' do
      user = User.new(
          first_name: "lillian",
          last_name: "klasen",
          email: "lillian.klasen@gmail.com"
      )
      expect(user).to be_valid
  end
 end

  context "With invalid attributes" do
      it 'should not save if the first_name field is blank' do
          user = User.new(
              first_name: "",
              last_name: "chang",
              email: "schang@coding.com"
          )
          expect(user).to be_invalid
      end

    it 'should not save if last_name fielf is blank' do
        user = User.new(
            first_name: "lillian",
            last_name: "",
            email: "lklasen@coding.com"
        )
        expect(user).to be_invalid
    end

     it 'should not save if email already exists' do
        user2 = User.create(first_name: "lilly", last_name: "klasen", email: "lklasen@gmail.com")

         user = User.new(
              first_name: "lillian",
              last_name: "klasen",
              email: "lklasen@gmail.com"
          )
          expect(user).to be_invalid
      end

      it 'should not save if invalid email format' do
          user = User.new(
              first_name: "lillian",
              last_name: "klasen",
              email: "lillianklasengmail.com"
          )
          expect(user).to be_invalid
      end
  end
end
