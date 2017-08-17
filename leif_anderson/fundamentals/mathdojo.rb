=begin
  mathdojo.rb leif anderson 8/1/17
=end

def splatting *params
 params
end
puts splatting(1).inspect # => [1]
puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
# => All the arguments are condensed into a single array.

class MathDojo
  attr_accessor :value

  def initialize
    @value = 0
  end

  def add *nums
    for num in nums
      if num.class == Array
        self.add *num
      else
        @value += num
      end
    end
    self
  end

  def subtract *nums
    for num in nums
      if num.class == Array
        self.subject *num
      else
        @value -= num
      end
    end
    self
  end
  def result
    @value
  end
end

y = MathDojo.new.add(2).add(2,3,7).subtract(-10, 100, -8)
p y.class
p y.result
#p x.result
#x.subtract(1000)
#p x.result
#challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
#challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
