#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#Find the sum of all the even-valued terms in the sequence which do not exceed four million.

# print fixed number of fibonacci series numbers specified by size  
require 'benchmark'

time = Benchmark.measure do ||
	
	  def printSumEvenFibo(size)  
		sum = 0
		x1,x2 = 0, 1  
		0.upto(size) do 
			break if x1 > 3999999
			sum += x1 if x1 % 2 == 0;		
			x1+=x2 				
			x1,x2= x2,x1 # note the swap for the next iteration  
		end	
		puts sum
	  end  
		 
	printSumEvenFibo(40)       

end

puts "Took #{time.total}"  