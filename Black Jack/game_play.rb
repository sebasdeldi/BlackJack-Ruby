require_relative('./deck.rb')
require_relative('./class_control.rb')


class Game_play

	def initialize
		deck = Deck.new
		dealer = Cards_control.new(deck)
		player = Cards_control.new(deck)

		player.hit!
		player.hit!
		dealer.hit!
		puts ""
		puts "REPARTIDOR = #{dealer.to_s}"
		puts ""
		puts "JUGADOR = #{player.to_s}"
		puts ""
		puts "TU TURNO"
		puts ""

		while player.hand_value < 21 

			puts "PEDIR CARTA (A) O PLANTARCE (B)"

			action = gets.chomp

			if action == "A"|| action == "a"
				player.hit!
				puts "JUGADOR = #{player.to_s}"
				puts ""
			end

			if action == "B"|| action == "b"
				break
			end
		end
		puts "!!!! FINAL JUGADOR = #{player.to_s}"
		puts ""

		if player.hand_value == 21
			puts "BLACK JACK! GANASTE"
			puts ""
		elsif player.hand_value <= 21
			puts "TURNO DEL REPARTIDOR"
			puts ""
			dealer.hit!
			puts "#{dealer.to_s}"
			puts ""


			while dealer.hand_value < 17

				puts "EL REPARTIDOR COJE OTRA CARTA"
				puts "REPARTIDOR = #{dealer.to_s}"
				puts ""
				dealer.hit!
			end
			puts "!!!! FINAL REPARTIDOR =  #{dealer.to_s}"
			puts ""
		end

		if dealer.hand_value == 21
			puts ""
			puts ""
			puts "PERDISTE  TE SACARON BLACK JACK!"
		end

		if player.hand_value > 21
			puts ""
			puts ""
			puts "PERDISTE  TE PASASTE DE 21"

		elsif dealer.hand_value > player.hand_value && dealer.hand_value < 21
			puts ""
			puts ""
			puts "PERDISTE  #{dealer.hand_value}   >  #{player.hand_value}"
		end	

		if  dealer.hand_value > 21 && player.hand_value < 21
			puts ""
			puts ""
			puts "GANASTE EL REPARTIDOR SE PASO DE 21"

		elsif dealer.hand_value < player.hand_value && player.hand_value < 21
			puts ""
			puts ""
			puts "GANASTE  #{dealer.hand_value}   <  #{player.hand_value}"
			
		end

		if dealer.hand_value == player.hand_value
			puts ""
			puts ""
			puts "EMPATE #{dealer.hand_value}  = #{player.hand_value}"
		end	
	end

	

	
end