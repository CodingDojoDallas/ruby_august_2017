require_relative 'mammal'

class Dog < Mammal

	def pet
		self.health += 5
		# p "#{health}"
		return self
	end

	def walk
		self.health -= 1
		# p "#{health}"
		return self
	end

	def run
		self.health -= 10
		# p "#{health}"
		return self
	end

	def display_health
		super 
	end
end
dog = Dog.new
dog.display_health.walk.walk.walk.run.run.pet.display_health