class Apple
    attr_accessor :age, :height, :count

    def initialize
        @age = 0
        @height = 1
        @count = 0
    end

    def year_gone_by
        @age += 1
        @height = (@height * 0.1) + @height

        if age > 3 && age < 10
            @count += 2
        else
            @count += 0
        end

        return "Apple Stats: Age: #{@age} ... Height: #{@height} ... Apple Count: #{@count}"
    end

    def pick_apples
        @count = 0
    end

end
