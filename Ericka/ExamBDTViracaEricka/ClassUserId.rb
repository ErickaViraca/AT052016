require_relative "Exam01Module.rb"

class UserId

	include TimeConversions
	attr_accessor :hashUser

	def initialize 
		@userName="null"
		@userId="null"
		@hashUser = Hash.new
	end

	def addUser amount

		amount.times do |index|
			resp=nil

			while resp==nil do
				puts "Please, insert the username for the position #{index}"
				username=gets.chomp.to_s
				resp=username=~/^[a-z][0-9]{1,11}$/
			end
				puts "Please, insert the userid"
				userid = gets.chomp.to_i
			@hashUser.store(username,userid)
		end
	end

	def amount
		puts "Please, insert the amount of users"
		amount = gets.chomp.to_i
		if amount>3 & amount<15 then
			return amount
		else
			puts "invalid amount"
		end
	end

	def wichConversionEachUser
		@hashUser.each{

		puts "Select the type of conversion than you desire perform"
		puts "a) From minutes to hours"
		puts "b) From hours to days"
		puts "c) From days to month"
		option = gets.chomp.to_s
		return option
	   }
	end


	def calculationResult option
		case option
				when a then {
					puts "Insert the value in minutes: "
					value = gets.chomp.to_i
					puts "the result is: #{value} min respresent #{Exam01Module.minuteToHours} Hrs"
				}
				when b then
					{puts "Insert the value in hours: "
					value = gets.chomp.to_i
					puts "the result is: #{value} Hrs respresent #{Exam01Module.hoursToDays} Days"}
				when c then
					{puts "Insert the value in days: "
					value = gets.chomp.to_i
					puts "the result is: #{value} Days respresent #{Exam01Module.daysToMonth} Month"}

				else puts "that option does not exist"
		end
	end

end

UI = UserId.new
quant = UI.amount
UI.addUser quant
UI.calculationResult UI.wichConversionEachUser