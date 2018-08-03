def smallest_multiple(min, max)
  working_number = max
  if working_number <= 10
    working_number += 1 until evenly_divisible?(working_number, min, max)
  else
    working_number += 10 until evenly_divisible?(working_number, min, max)
  end
  return working_number
end

def evenly_divisible? w, m, mx
  (m..mx).each do |i|
    return false unless w%i == 0
  end
  return true
end