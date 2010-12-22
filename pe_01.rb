#Project Euler - Problem 1
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000
#341.28399991989136

class Numeric
  def roundup(nearest=10)
    self % nearest == 0 ? self : self + nearest - (self % nearest)
  end
  
  def rounddown(nearest=10)
    self % nearest == 0 ? self : self - (self % nearest)
  end
  
  def sum_divisble_by(n)
		p = self / n
		return n*(p*(p+1)) / 2
  end  
end 


require 'benchmark'

time = Benchmark.measure do ||
	sum = 0

	puts 1000_000_000.sum_divisble_by(3) + 1000_000_000.sum_divisble_by(5) - 1000_000_000.sum_divisble_by(15)
end

puts "Took #{time.total}"
