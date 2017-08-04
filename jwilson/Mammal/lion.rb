require_relative "Mammal"

class Lion < Mammal
    attr_accessor :health
    def initialize
        @health = 170
    end

    def fly
        @health -= 10
        self
    end

    def attack_town
        @health -= 50
        self
    end

    def eat_humans
        @health += 20
        self
    end

    def display_hp
        super
    end
end

aslan = Lion.new

aslan.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly

puts aslan.display_hp