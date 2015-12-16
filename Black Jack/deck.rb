require_relative('./cards.rb')

class Deck


	def initialize
		@cards = []
		create_cards
	end

	def cards
		@cards
	end

	def take!
		@cards.shift
	end

	private
		def create_cards
			non_num = ["A","J", "Q", "K"]
			types = [:CLUBS, :HEARTS, :DIAMONDS, :SPADES]

			types.each do |t|
				non_num.each do |non|
					@cards << Cards.new(t, non)
				end
				(2..10).each do |num|
					@cards << Cards.new(t,num)
				end
			end

			@cards.shuffle!
		end
end