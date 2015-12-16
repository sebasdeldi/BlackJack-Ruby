class Cards_control

	def initialize (deck)
		@deck = deck
		@cards = []
	end

	def cards
		@cards
	end

	def hit!
		@cards << @deck.take!
	end

	def hand_value
		val = 0
		@cards.each do |c|
			val += c.value
		end
		return val
	end

	def to_s
		str = ""
		@cards.each do |c|
			str += "#{c.value} OF #{c.type}   "
		end

		str_final = str + "(#{hand_value})   "
	end
end