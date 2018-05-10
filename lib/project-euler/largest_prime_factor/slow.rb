require 'prime'

# This is a REALLY terrible solution to this problem.
# It seems fine but its really slow once you try it on any number over 6 figures.
# If you're one of those people stealing solutions, first of all, stop that.
# But if you're going to anyway, steal a better one.

def largest_prime_factor n
  factors(n).reverse.each do |i|
    return i if Prime.prime?(i)
  end
end

def factors n
  factors = []
  (1..n).each do |i|
    factors.push(i) if (n % i).zero?
  end
  factors
end