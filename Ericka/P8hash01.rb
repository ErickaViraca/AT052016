class Hash01
		@@h = Hash.new
		attr_accessor :h

	def method1
		puts "Give the length of the new hash"
		lengthHash = gets.chomp.to_i
		lengthHash.times do # | |
			puts "insert the key"
			key = gets.chomp
			puts "and the value"
			value = gets.chomp
			@@h.store(key,value)		
		end
	end

	# method to print the value of the pairs
	def methodPrintKey
		p @@h.keys 
	end

	# method to print the value
	def methodPrintValue
		p @@h.values
	end

	# method to print the hash
	def methodPrintHash
		p @@h
	end

	# method to define is a key inserted by the user, exists on the hash
	def methodKeyExistOnTheHash
		puts "insert the key to verified"
		keyInspected = gets.chomp
		h.has_key?("keyInspected")
	end

	# method to define is a value inserted by the user, exists on the hash
	def methodValueExistOnTheHash
		puts "insert the value to verified"
		valueInspected = gets.chomp
		h.has_value?("valueInspected")
	end
end

H1 = Hash01.new
H1.method1
H1.methodPrintKey
H1.methodPrintValue
H1.methodKeyExistOnTheHash
H1.methodValueExistOnTheHash
