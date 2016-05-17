class Iterators

	attr_reader :quantity

	def initialize(quantity)
		@quantity = quantity 
    end



	def registerPersons

		persons = Hash.new
		@quantity.times do
			puts "insert the name"
			key = gets.chomp
			puts "and the ID"
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


end

It=Iterators.new(3)
#puts "#{It.registerPersons}"
puts"#{It.methodUppercase(It.registerPersons)}"
