require_relative "Human"

class Ninja < Human

    attr_accessor :health

    def intialize
        @health = 175
    end

    def steal(player)
        self.health += 10
    end

    def get_away
        self.health -= 15
    end
end