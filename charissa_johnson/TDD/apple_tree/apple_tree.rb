class AppleTree
	attr_accessor :age
	attr_reader :height, :apple_count

	def initialize
		@age = 0
		@height = 0
		@apple_count = 0
	end

	def year_gone_by
		@age += 1
		#Increase height by 10% of it's current height
		@height = @height + (@height * 0.10)
		#Raise apple count by two IF tree is older than 4 and less than 10
		@apple_count += 2 if (4..10).include?(age)  
	end

	def pick_apples
		@apple_count = 0
	end
end