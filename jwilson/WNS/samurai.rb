require_relative "Human"

class Samurai < Human

    attr_accessor :health
    @@samurais = 0


    def initialize
        @health = 200
        @@samurais += 1
    end

    def death_blow(player)
        player.health = 0
    end

    def meditate
        self.health = 200
    end

    
    def how_many
        p "There are #{@@samurais} samurai(s)"
    end

end

s1 = Samurai.new

s1.how_many