require_relative "Human"

class Wizard < Human
    attr_accessor :health, :int

    def initialize
        @health = 50
        @int = 25
    end

    def heal
        self.health += 10
        self
    end

    def fireball(player)
        player.health -= 20
        self
    end
end

w1 = Wizard.new
w2 = Wizard.new

w1.fireball(w2).fireball(w2)
w2.heal
p w2.health