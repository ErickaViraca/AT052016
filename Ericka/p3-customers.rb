class customers
	def initialize (id, name, addr)
		@cust_id=id
		@cust_name=name
		@cust_addr=addr
	end
	def display_details()
		puts "customers id #{@cust_id}"
		puts "customers name #{@cust_name}"
		puts "customers address #{@cust_addr}"
	end
end

cust1=customers.new("1", "Ana", "Sopocachi, LP")
cust2=customers.new("2", "Juan", "Melchor Perez, CBBA")

cust1.display_details()
cust2.display_details()