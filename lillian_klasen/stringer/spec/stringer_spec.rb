require "spec_helper"

RSpec.describe Stringer do
  it "has a version number" do
    expect(Stringer::VERSION).not_to be nil
  end

  it "concatenates undefined number of strings with a space" do
      expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "minifies a string given a max_length" do
      expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
  end

  it 'returns the string if the max_length is more than the string length' do
      expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end

  it 'replaces each instance of a word with the replacement provided' do
      expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it 'iterates over a string and adds each word into an array and then returns the array' do
      expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
  end

  it 'removes each instance of the second parameter within the original string' do
      expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end
