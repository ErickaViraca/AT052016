class Person

	def initialize(nam,ag)
		@name=nam
		@age=ag
		#puts "give me your name"
		#name = gets.chomp.to_s
		#puts "give me your age"
		#@age = gets.chomp.to_i
	end
	def show
	return @age
	end

end

class CalculateAge
	def getAge(agex)
	return agex*365*24*60
    end
end

puts "give me your name"
n1 = gets.chomp.to_s
puts "give me your age"
e1 = gets.chomp.to_i

p1=Person.new(n1,e1)
puts CalculateAge.new.getAge(p1.show)

