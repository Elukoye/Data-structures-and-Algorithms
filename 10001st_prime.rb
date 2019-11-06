# Brute Force implemenation
require 'prime'
arr = Prime.take(10001)
arr[arr.length - 1] 


#Improved Implementation
def is_prime?(num)
  return false if num <= 1
  return true if num.between?(2,3)
  return false if num.even?
  return false if num % 3 == 0 

  j = 5
  w = 2 

  while j*j <= num
    return false if num % j == 0
    j += w
    w = 6 - w
  end 
   true
end
i = 2
primecount = 0

while true
  primecount += 1 if is_prime?(i)
  if primecount == 10001
    puts "10,001th prime = #{i}"
    exit
  end
  i += 1
end
