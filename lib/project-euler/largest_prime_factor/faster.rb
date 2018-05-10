require 'prime'

# This solution is still terrible but a little better

def largest_prime_factor n
  return n if Prime.prime?(n)
  largest_prime_factor(next_factor(n))

end

def next_factor n
  (n-1).downto(1) do |i|
    return i if(n % i).zero?
  end
end