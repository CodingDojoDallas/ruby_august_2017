class Mammal
	attr_accessor :health

	def initialize 
		@health = 150
		return self
	end

	def display_health
		p "The health is #{health}"
		return self
	end
end

# animal = Mammal.new
# p animal.display_health