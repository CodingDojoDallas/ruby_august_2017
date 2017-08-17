=begin
  dog.rb leif anderson 8/1/17
=end
require_relative 'mammal'

class Dog < Mammal
  def pet
    @health += 5
    self
  end
  def walk
    @health -= 1
    self
  end
  def run
    @health -= 10
    self
  end
end

dog = Dog.new
dog.walk().walk().walk().run().pet().display_health()
