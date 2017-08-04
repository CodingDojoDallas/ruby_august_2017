require_relative "mammal"

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

rover = Dog.new
puts rover.walk.walk.walk.run.run.pet.display_health
# Have an instance of the Dog class walk 3 times, run twice, pet once and then display its health
