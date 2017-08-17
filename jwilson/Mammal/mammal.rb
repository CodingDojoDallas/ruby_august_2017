

class Mammal 
    attr_accessor :health
    def initialize
        @health = 150
    end

    def display_hp
        @health
    end
end

m1 = Mammal.new

m1.display_hp