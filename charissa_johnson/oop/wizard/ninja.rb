require_relative 'human'

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end
	
	def steal(victim)
		attack(victim)
		@health += 10
		end
	end

	def get_away
		@health -= 15
	end

end