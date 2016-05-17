class Case
	#attr_reader :name
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
		if @age <= "35"
			return "@age*2"	#return "#{@age*365*24}" 
		else
			puts "the age cannot be calculated"
		end
	end
	#method that consider the values obtained from
	#previous. use short-if expression method
	def clasificationByAge
		aux = @age/24/365
		puts res = if 0<=aux<=5 then "you are a baby" end
		puts res = if 6<=aux<=12 then "you are a child" end
		puts res = if 13<=aux<=21 then "you are a young people" end	
 		puts res = if 22<=aux<=35 then "you are a adult" end
 		
 	end
  end
#end 

Ca=Case.new("Ana", "13")
puts "#{Ca.calculatedAge}"
#Ca.clasificationByAge