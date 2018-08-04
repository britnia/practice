def highly_divisible_triangular_number(min_factors)
  counter = 1
  triangle = 1
  until count_factors(triangle) > min_factors
    counter += 1
    triangle += counter
  end
  triangle
end

def count_factors max
  factors = [1, max]
  (2..max-1).each do |i|
    break if factors.include?(i)
    if max % i == 0
      factors.push(i)
      factors.push(max/i)
    end
  end
  factors.size
end