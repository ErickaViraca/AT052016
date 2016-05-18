

class Case
	attr_accessor :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
	end
	#method to calculate years 
	#in hours only if years is lower than 35, 
	#otherwise return a message that age cannot be calculated
	def calculatedAge
		#puts "please, insert the age than you need calcaulated"
		#ageAux = gets.chomp.to_i
		@age<=35? result=@age*365*24 : result="Age can not be calculated"
		result
	end
	#method that consider the values obtained from
	#previous. use short-if expression method
	def clasificationByAge
		@age<=5 ? (puts "you are a baby") : 
		@age<=12 ? (puts "you are a child") : 
	    @age<=21 ? (puts "you are a young people") : 
		@age<=35 ? (puts  "you are a adult") :  (puts "Age can not be calculated")
		
	 end
end

puts "Please, insert the name:"
name=gets.chomp.to_s
puts "Please, insert the age:"
age=gets.chomp.to_i
Ca=Case.new(name, age)
puts "#{Ca.calculatedAge}"
Ca.clasificationByAge