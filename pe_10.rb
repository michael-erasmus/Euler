#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.


#Using The Sieve of Eratosthenes:

numbers = (2...1000000).to_a.select{|n| n % 2 != 0}

#index_increment = 0

#numbers.each_index do |i|	
	#puts "At #{i} = #{numbers[i]}" if numbers[i] != x && numbers[i] % x == 0
#	index_increment += numbers[i]
#	index =  i 			
#	while(index < numbers.length)		
		#puts "At #{index} = #{numbers[index]}"
#		numbers.delete_at(index)						
#		index += index_increment - 1
#	end
#end		

last_prime = 2

numbers.each do |x|		
	increment = 2 * x
	index = numbers.index(x*x)	
	while index < numbers.length
		to_remove = 
		numbers.delete_at(index)
		last += increment
		numbers.delete_at(numbers.index(last))
	end
 	#numbers.each_index do |i|	
	#	puts "At #{i} = #{numbers[i]}" if numbers[i] != x && numbers[i] % x == 0
		
	#end
	#numbers.reject! {|y| x != y && y % x == 0}
	#gets
end


#puts numbers.inspect

sum = 0

numbers.each {|n| sum += n}  
puts sum