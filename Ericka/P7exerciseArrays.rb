class P7exercise
	def method1 
		newNumbers = Array.new
		numbers = Array.new

		alphabetical = Array.new
		alphabetical = ["a","b","c","d"]
		mixed = Array.new
		mixed = ["hi", 5]

		numbers = [2, 3, 4, 5]
		4.times do
			aux = numbers.shift
			newNumbers.push(aux)
		end

		p newNumbers
		p alphabetical
		p mixed			
	end

	def method2(array1, array2)
		puts "#{array1 & array2}"
		puts array1.first, array2.first
		puts array1.last, array2.last
	end

	def method3(array3, array4)
		firstEleFirstArray = array3.shift
		lastEleSecondArray = array4.pop
		newArr = Array.new
		newArr.push(firstEleFirstArray, lastEleSecondArray)
		puts "#{array3 + array4}"
		return newArr
	end

	def method4 newArr
		p newArr
	end

end


a = [5,4,3,2,1]
b = [9,8,7,6,5]
c = [5,4,3,2,0]
d = [0,1,0,1,0]
A1 = P7exercise.new
A1.method1
A1.method2(a,b)
#A1.method3(c,d)
A1.method4(A1.method3(c,d))