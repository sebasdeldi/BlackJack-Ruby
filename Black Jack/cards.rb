class Cards

	def value
		@value
	end

	def type
		@type
	end

	def initialize(type,value)
		@value = value
		@type = type	
	end

	def value
		non_numa_sinA = ["J", "Q", "K"]

		if non_numa_sinA.include?(@value)
			return 10
		elsif @value == "A"
			return 11
		else
			return @value
		end
	end
end