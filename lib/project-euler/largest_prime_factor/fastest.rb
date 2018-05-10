require 'prime'

# This solution is SOOOOO much faster. OMG.
# benchmarks for 13195
# Slow solution: 0.00273
# Faster solution: 0.00241
# Fastest solution: 0.00151
#
# Performance goes up exponentially though.
# The other two solutions couldn't even process the huge number in the challenge in over 2 hours.
# This solution does it in just over 6 seconds.

def largest_prime_factor n
  return n if Prime.prime?(n)
  (2..(n)).each do |i|
    return n/i if (n%i).zero? && Prime.prime?(n/i)
  end
end