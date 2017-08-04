require_relative "human"

class Ninja < Human
    def initialize(stealth=75)
        super
        @stealth = stealth
    end

    def steal(object)
        object.attack
        @health += 10
        self
    end

    def get_away
        @health -= 15
        self
    end
end
