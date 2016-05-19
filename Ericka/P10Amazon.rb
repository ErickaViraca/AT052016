require 'singleton'
class Amazon

	include Singleton
	attr_reader :itAmount,:itQuantity

	def initialize 
		@itAmount={}
		@itPrice={"Tv"=>3000,"chocolate"=>35,"skirt"=>80,"book"=>110,"ball"=>100}
		@itQuantity={"Tv"=>10,"chocolate"=>10,"skirt"=>12,"ball"=>15}
	end

	def buyIt 
		puts "What product are you going to buy?"
		it=gets.chomp.to_s
		puts "How many?"
		amount=gets.chomp.to_i
		@itQuantity.each{|key,value|
			if key==it then @itQuantity.store(key,value-=amount) end}
	end

	def calculatePrice(it,amount)
		res=0
		@itPrice.each{|key,value|
			if it==key then res=value*amount end
		}
		res
	end

end



A1=Amazon.instance
puts "How many items are you going to buy?"
quantity=gets.chomp.to_i
quantity.times do |index|
	A1.buyIt
end

puts "Item    Price"
A1.itAmount.each {|key,value|
	print "#{key}   " 
	puts A1.calculatePrice(key,value)}

puts A1.itQuantity

=begin
Should be better to use singleton for this implementation? Why?

Yes, because  because all the time we insert or remove data 
shopping on amazon list (A1) of products we already have bone on the
same instance.

=end