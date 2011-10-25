#this one was rather easy
((1..100).inject(0){|t,n|t+n}**2) - (1..100).inject(0){|t,n| t + n**2}
