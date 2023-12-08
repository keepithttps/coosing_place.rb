class Place 
	attr_reader :row, :chair 
	@@occupied_chair = []			

	def initialize(row:, chair:)
		@row = row
		@chair = chair
		 
	end 

	def set_row=(row)
		@row = row
	end
	
	def set_chair=(chair)
		@chair = chair
	end

	# Создаём массив occupied_chair для занятых мест ("*"), и свободных мест( с номероми).
	def occupied_chair 
		
		@@occupied_chair = [*0..140]
		
		@@occupied_chair[(@row * 10) + (@chair)] = "*"

		@@occupied_chair
		
	end

	def sum 
	return (@row * 10) + (@chair)
	end

	# Выводим сам зал с местами занятами, и пустыми 
	def seat_auditorium
	
		puts 
		puts
		

		screen = "    * * * *--------------------------------------Э-К-Р-А-Н-------------------------------------* * * *"
		puts screen
		puts
		puts
		row_w = 1
		while row_w <= 12

			chair_w = 1
			print format( "  Ряд %#{3}d: ", row_w) 

			while chair_w <= 20

				if @@occupied_chair[(row_w * 10) + chair_w] != ("*")
					print  format("%#{4}s", chair_w )
					chair_w += 1
				else
					print  format("%#{4}s", (@@occupied_chair[(row_w * 10) + chair_w]) )
					chair_w += 1
				end

			end

		puts format( "  :Ряд %#{3}d"  , row_w )  
		row_w += 1
			
		end
		
	end 

end


 # place = Place.new
 place = Place.new(row: 0, chair: 0)
 place.set_row = 6

place.set_chair = 18

 p place.row
 p place.chair
# puts "sdef"
# puts  "ind #{place.occupied_chair_index}"

p place.occupied_chair 	# массив с местами 
puts
# p  "купленное  место в кинозале № #{place.sum}"

puts "Выводим места в зале "
puts  place.seat_auditorium

 


