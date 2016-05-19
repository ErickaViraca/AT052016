class UserIdGroup
	attr_reader :hash

	def initialize
		@userId ={}
	end

	def createHash
		puts "How many users are you going to register?"
		quantity=gets.chomp.to_i
		
		quantity.times do |index|

			puts "Please, insert the ID for the position #{index}"
			id=gets.chomp.to_i
			while id<1 || id>100 do
				puts "Please, insert the ID for the position #{index}"
				id=gets.chomp.to_i
			end
			
			resp=nil
			while resp==nil do
				puts "Please, insert the username for the position #{index}"
				username=gets.chomp.to_s
				resp=username=~/^[a-z]{1,8}$/
			end
			@userId.store(id,username)
		end
	end

	def arrayOnNumber(number)
		array=Array.new
		@userId.each{|key,value| 
			resp=nil 
			resp=key.to_s=~/#{number}/
			if resp!=nil then array.push(key) end}
				array
	end

	def arrayOnCharacter(character)
		array=Array.new
		@userId.each{|key,value| 
			resp=0 
			resp=value.to_s=~/#{character}/
			if resp==0 then array.push(value) end}
				array
	end

	def message(id)
		case id
		when (1..25) then puts "User belong Group 1"
		when (26..50) then puts "User belong Group 2"
		when (51..75) then puts "User belong Group 3"
		when (76..100) then puts "User belong Group 4"			
		end
	end

	def printList(array)
		p array
	end
end

UIG1=UserIdGroup.new
UIG1.createHash

puts "Insert a number to find de Ids:"
number=gets.chomp.to_i
puts "The array of ids is:"
UIG1.printList(UIG1.arrayOnNumber(number))
puts "Insert a character to find de usernames:"
username=gets.chomp.to_s
puts "The array of usernames is:"
UIG1.printList(UIG1.arrayOnCharacter(username))
UIG1.printList(UIG1.userId)
UIG1.userId.each{|key,value|
	UIG1.message(key)}