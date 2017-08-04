class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include?(Human)
            object.health -= 10
            true
        else
            false
        end
    end

    def display_health
        puts @health
    end
end

lillian = Human.new
person = Human.new
person.attack(lillian)
lillian.display_health
person.health
