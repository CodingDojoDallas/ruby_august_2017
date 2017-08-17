require_relative 'mammal'

class Dog < Mammal

  def subclass_method
    initialize
    display_health
    self
  end

  def pet
    @animal_health =+ 5
    self
  end

  def walk
    @animal_health -= 5
    self
  end

  def run
    @animal_health -= 10
    self
  end

  def subclass_method
    display_health
  end

end
diesel = Dog.new
diesel.walk.walk.walk.run.run.pet.display_health
