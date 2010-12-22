#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
#Answer(232792560) But i broke the 1 minute rule
highest_divisor = 0
num = 0 
while highest_divisor < 21
	num += 1
	#next if num % 2 != 0 || num % 3 != 0 || num % 5 != 0 || num % 10 != 0
	highest_divisor = 1 
	while num % highest_divisor == 0 && highest_divisor < 21
		highest_divisor += 1		 	
	end			
end
puts num