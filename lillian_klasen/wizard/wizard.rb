require_relative "human"

class Wizard < Human
    def initialize(health=50, intelligence=25)
        super
        @health = health
        @intelligence = intelligence
    end

    def heal
        @health += 10
    end

    def fireball(object)
        object.health -= 20
    end
end
