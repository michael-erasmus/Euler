#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

#Find the largest palindrome made from the product of two 3-digit numbers.
#Answer(906609)

require 'benchmark'

time = Benchmark.measure do ||

	def is_palindromic(number)
		return number.to_s == number.to_s.reverse
	end

	highest = 0

	999.downto(100) do |n|
		999.downto(100) do |n1|
			product = n * n1
			if is_palindromic(product) && product > highest 
				highest = product
				break
			end	
		end	
	end
	puts highest
end

puts "Took #{time.total}"	