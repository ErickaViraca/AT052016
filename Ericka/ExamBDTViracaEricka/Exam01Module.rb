module TimeConversions
	def minuteToHours
		puts "Please, insert the minutes to convert in hours"
		min = gets.chomp.to_f
		res = min/60
		return "#{res}" 
	end

	def hoursToDays
		puts "Please, insert the hours to convert in days"
		hours = gets.chomp.to_i
		return "#{hours/24}"
	end

	def daysToMonth
		puts "Please, insert the days to convert in month"
		days = gets.chomp.to_i
		return "#{days/30}"
	end
end