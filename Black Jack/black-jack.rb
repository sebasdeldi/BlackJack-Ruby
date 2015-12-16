=begin
1. Repartir las cartas.

2. Preguntar al usuario si desea carta o se planta.
	Si pide carta
		Si se pasa ir al punto4
		De lo contrario, volver al punto2
	Si se planta
		Ir al punto3

3. Determinar el valor que tiene el repartidor.
	Si es <17, entregarse otra carta.
		Si se pasa, ir al punto 4
		De lo contrario, volver al punto 3
	De lo contrario
		Ir al punto 4

4. Determinar el ganador
	Si el usuario se pasó, gana el repartidor
	Si el repartidor se pasó, gana el usuario
	Si el repartidor tiene más que el usuario gana el repartidor
	Si no, ocurre lo contrario
5. Volver al punto 1
=end

#Como representamos 1carta
#Como representamos 1baraja (52 cartas)
#Como representamos las cartas que tiene cada uno



require_relative('./game_play.rb')



juego = Game_play.new








