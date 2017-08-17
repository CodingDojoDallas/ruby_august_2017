class MathDojo
    attr_accessor :result
    def initialize
        @result = 0
    end

    def add(*nums)
        nums.flatten!
        @result+=nums.reduce(:+).round(2)
        return self
    end

    def subtract(*nums)
        nums.flatten!
        @result-=nums.reduce(:+).round(2)
        return self
    end
end

p challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
p challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result