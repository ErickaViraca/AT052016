require_relative "Exam01Module.rb"

class ExecutionModule
	include TimeConversions

end


Ex = ExecutionModule.new
Ex.minuteToHours
Ex.hoursToDays
Ex.daysToMonth