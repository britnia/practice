def smallest_multiple(min, max)
  working_number = max
  working_number += max until evenly_divisible?(working_number, min, max)
  return working_number
end

def evenly_divisible? w, m, mx
  (m..mx).each do |i|
    return false unless w%i == 0
  end
  return true
end