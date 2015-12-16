# define la clase Pico_Placa 
class Pico_Placa
 
  # método inicializar clase
  def initialize(plate_number, date,time)  
    # atributos   
    @plate_number = plate_number  
    @date = date  
	@time = time  
  end  
 
 
  # método drive
  def drive
   plate_number1=@plate_number.chomp
	plate_len=plate_number1.length-1
	puts plate_len
	last_digit=plate_number1[plate_len]
	puts last_digit
	time=""
	time[0..1]="#{@time}"[0..1]
	time[2]="."
	time[3..4]="#{@time}"[3..4]
	puts time
	puts @date
	case @date.chomp
		when "lunes" then
			if last_digit.to_i == 1 or last_digit.to_i == 2
				if time.to_f>=7.0 and time.to_f<=9.30
					puts "The car not could be on the road"
				elsif time.to_f>=16.0 and time.to_f<=19.30
					puts "The car not could be on the road"
				else
					puts "The car could be on the road"
				end
			else
				puts "The car could be on the road"
			end
		when "martes" then
			if last_digit.to_i == 3 or last_digit.to_i == 4
				if time.to_f>=7.0 and time.to_f<=9.30
					puts "The car not could be on the road"
				elsif time.to_f>=16.0 and time.to_f<=19.30
					puts "The car not could be on the road"
				else
					puts "The car could be on the road"
				end
			else
				puts "The car could be on the road"
			end
		when "miercoles" then
			if last_digit.to_i == 5 or last_digit.to_i == 6
				if time.to_f>=7.0 and time.to_f<=9.30
					puts "The car not could be on the road"
				elsif time.to_f>=16.0 and time.to_f<=19.30
					puts "The car not could be on the road"
				else
					puts "The car could be on the road"
				end
			else
				puts "The car could be on the road"
			end
		when "jueves" then
			if last_digit.to_i == 7 or last_digit.to_i == 8
				if time.to_f>=7.0 and time.to_f<=9.30
					puts "The car not could be on the road"
				elsif time.to_f>=16.0 and time.to_f<=19.30
					puts "The car not could be on the road"
				else
					puts "The car could be on the road"
				end
			else
				puts "The car could be on the road"
			end
		when "viernes" then
			if last_digit.to_i == 9 or last_digit.to_i == 0
				if time.to_f>=7.0 and time.to_f<=9.30
					puts "The car not could be on the road"
				elsif time.to_f>=16.0 and time.to_f<=19.30
					puts "The car not could be on the road"
				else
					puts "The car could be on the road"
				end
			else
				puts "The car could be on the road"
			end
		when "sabado" then
			puts "The car could be on the road"
		when "domingo" then
			puts "The car could be on the road"
		else
			print "Fecha invalida"
	end
  end  
end 

puts "Insert your plate number"
plate_number=gets()
puts "Insert the date"
date=gets()
puts "Insert time"
time=gets()


#object = Pico_Placa.new('HGB651', 'viernes','08:20')  
object = Pico_Placa.new(plate_number,date,time)  
object.drive

gets()
