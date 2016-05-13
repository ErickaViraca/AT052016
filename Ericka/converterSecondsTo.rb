puts "plis enter the seconds: "

valueNumber = gets.chomp.to_f

puts "do you want convert in (minutes, hours or days? )"
StringM ="minutes"
StringH = "hours"
StringD = "days"
valueInMinutes = valueNumber/60
valueInHours = valueNumber/3600
valueInDays = valueNumber/86400

$valueString = gets.chomp.to_s

case $valueString
when "minutes"
	puts "#{valueInMinutes}"
when "hours"
	puts "#{valueInHours}"
when "days"
	puts "#{valueInDays}"
end
	