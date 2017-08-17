class Human
    attr_accessor :health, :strength, :int, :stealth

    def initialize
        @health = 100
        @strength = 3
        @int = 3
        @stealth = 3
    end

    def attack(person)
        if person.class.ancestors.include?(Human)
            person.health -= 10
            
        else
            p "This is no ordinary man..."
        end
    end
end

    h1 = Human.new
    h2 = Human.new
