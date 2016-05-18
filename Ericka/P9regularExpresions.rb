class RegularExpresions	
	def userName
		resp = nil
		while resp==nil do
			puts "Insert the username:"
			username=gets.chomp.to_s
			 if username==/(?=.*[a-z])(?=.*[0-9])(?=.*[_])/ then
			 	puts "User name inserted"
			    resp = username
			 else
			 	puts "incorrect username"
			 	resp = nil
			 end 
		end
	end

	def password
		resp=nil
		while resp==nil do
			puts "Insert the password:"
			password=gets.chomp.to_s
			if password==/(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{8,16}/ then
				puts "password inserted"
			    resp = password
			else
				puts "incorrect password"
				resp = password
			end
		end 
	end

	def mail
		resp=nil
		while resp==nil do
			mail=gets.chomp.to_s
			if mail=~/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/ then
				puts "mail inserted"
			    resp = mail
			else
				puts "incorrect mail"
				resp = mail  
			end
		end
	end

end

RE = RegularExpresions.new
RE.userName
RE.password
RE.mail