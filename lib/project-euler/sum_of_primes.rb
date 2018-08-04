require 'prime'

def sum_of_primes max
  Prime.each(max).sum
end