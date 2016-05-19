require 'singleton'
class Person
	include Singleton
	attr_accessor :user
	

	def initialize 
		@user="Guest"
		@message="Welcome to Ruby"
	    @visitors=0
	    @hash=Hash.new
	    @hash.store(@user,@message)
	end

	def addUserMessage(user,welcome)
		@user = user
		@message = welcome
		@visitors += 1
		@hash.store(@user,@message)
	end
	
end

P1=Person.instance

puts "Please, insert the new user"
user=gets.chomp.to_s
puts "Please, insert the new welcome message"
message=gets.chomp.to_s
P1.addUserMessage(user,message)
puts "Final user:#{Person.instance.user}"