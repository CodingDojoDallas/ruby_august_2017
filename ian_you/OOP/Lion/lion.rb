require_relative 'mammal'
class Lion < Mammal
    attr_accessor :health
    def initialize
        super
        @health = 170
    end

    def fly
        @health -= 10
        return self
    end

    def attack_town
        @health -=50
        return self
    end

    def eat_humans
        @health += 20
        return self
    end

    def display_health
        p "This is a Lion"
        super    
        return self
    end
end

simba = Lion.new
simba.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health

