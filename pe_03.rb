#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

#Answer) 6857
require 'benchmark'

time = Benchmark.measure do ||

	def is_prime(n) 
		return false if n % 2 == 0 
		i = 2
		while i <= Math.sqrt(n)
			if n % i == 0
				return false
			end	
			i += 1
		end	
		true
	end	

	Math.sqrt(600851475143).to_i.downto(1) do |n|
		if 600851475143 % n == 0 && is_prime(n) # thanks to short circuit eval this is fast(primes take long to compute)
			puts n 
			break
		end	
	end	
end

puts "Took #{time.total}"

