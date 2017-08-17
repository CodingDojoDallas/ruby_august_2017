class Mammal
  def initialize
    puts "I am alive"
  end
  def breath
    puts "Inhale and exhale"
  end

  def who_am_i
    # printing the current object
    puts self
  end
end
my_mammal = Mammal.new.who_am_i.breath # => "I am alive"
