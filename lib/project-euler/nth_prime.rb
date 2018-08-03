require 'prime'

def nth_prime bound
  count = 0
  current = 1
  until count == bound do
    count += 1 if Prime.prime?(current)
    return current if count == bound
    current+= 1
  end
end