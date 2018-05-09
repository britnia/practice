def sum_threes_and_fives(num)
  threes_and_fives(num).sum
end

def threes_and_fives(num)
  (1..(num-1)).find_all { |n|
    (n % 3).zero? || (n % 5).zero?
  }
end