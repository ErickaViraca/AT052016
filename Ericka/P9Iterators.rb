
class Iterators

	attr_accessor :quantity

	def initialize(quantity)
		@quantity = quantity 
    end

	def registerPersons

		persons = Hash.new
		@quantity.times do 
			puts "insert the name: "
			key = gets.chomp.to_s
			puts "and the ID: "
			value = gets.chomp
			persons.store(key,value)		
		end
		return persons
	end


	def methodUppercase persons
		list = Array.new
		persons.each_with_index do |(key,value),index|
			names = key.upcase
			#puts "names"
			puts "#{index}: #{names}"
			list.push(names)
	    end
	    return list
	end
	def methodGoodBye persons
		persons.each do |key,value|
    	puts "Good bye #{key}"
		end
	end

end

puts "Insert quantity:"
quantity=gets.chomp.to_i
It=Iterators.new(quantity)
Bdpersons =It.registerPersons
puts "the array list is the next: "
It.methodUppercase(Bdpersons)
puts "GOOD BYE PERSONS "
It.methodGoodBye(Bdpersons)
