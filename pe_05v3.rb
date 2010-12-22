#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
#The right way :)
#Get the prime factors and their highest occurances, then multiply each prime factor with it's highest occurance
#note: using is_prime from pe_03.rb

def is_prime(n) 
	return false if n == 1 || n % 2 == 0 
    i = 2
    while i <= Math.sqrt(n)
        if n % i == 0
            return false
		end	
        i += 1
	end	
    true
end	

def prime_facs(n)
	facs = []
	n.downto(1) do |x|
		facs << x if n % x == 0 && is_prime(x)
	end
	facs
end

highest_facs = {}

1.upto(20) do |n|
	facs = prime_facs(n)
	facs.each do |f|	
		highest_facs[f] = n / f if !highest_facs[f]
		highest_facs[f] = n / f if highest_facs[f] < n / f	
	end	
end

total = 1

highest_facs.each_pair do |k,v| 
	puts "#{k}^#{v}=#{(k**v)}" 
	total = total * (k**v)
end	
puts total