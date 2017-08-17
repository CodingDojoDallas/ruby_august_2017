class Mammal
    def initialize(health=150)
        @health = health
    end

    def display_health
        puts "Health = #{@health}"
    end


# default health attribute with value of 150
# method called display_health which prints the health of the mammal
end

puts mammal = Mammal.new.display_health
