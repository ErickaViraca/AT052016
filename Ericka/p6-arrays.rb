class Arrays
	#create a method that is going to return an array
	def getArray
		nums = [1,2,3,4,5]	
		puts nums.inspect
	end

	#create 1 method that is going to print the first element of any array received as argument
	def firstElement(newArray)
		#puts "please enter the new array"
		#num1 = [1,2,3,4,5]
		puts newArray.first
	end

	#create 1 method that is going to print the last element of any array received as argument
	def lastElement(newArray)
		puts newArray[-1]
	end
	#create 1 method that is going to receive two different arrays, and will print the common elements between both arrays
	def commonElements(nums, arrayDiff)
		puts "#{nums & arrayDiff}"
	end

end

a = [5,4,3,2,1]
b = [9,8,7,6,5]
A1 = Arrays.new
A1.getArray
A1.firstElement(a)
A1.lastElement(a)
A1.commonElements(a,b)