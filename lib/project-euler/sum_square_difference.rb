def sum_square_difference min, max
  square_of_sums(min, max) - sum_of_squares(min, max)
end

def sum_of_squares min, max
  (min..max).map { |i| i*i }.sum
end

def square_of_sums min, max
  (min..max).sum * (min..max).sum
end