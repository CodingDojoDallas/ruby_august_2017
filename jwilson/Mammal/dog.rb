require_relative "Mammal"

class Dog < Mammal
    
    def pet
        @health += 5
        self
    end

    def walk
        @health += 1
        self
    end

    def run
        @health -= 10
        self
    end
end

gunner = Dog.new

gunner.walk.walk.walk.run.run.pet
puts gunner.display_hp