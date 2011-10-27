(1..1000).each do |a| 
  (1..1000).each do |b|
    c = 1000 - (a + b)
    puts a * b* c  if a**2 + b**2 == c**2
  end
end
