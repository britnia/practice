def even_fibonacci_sum(limit)
  even_numbers(fibonacci_numbers(limit)).sum
end

def fibonacci_numbers(limit)
  x = 1
  y = 0
  fibs = []
  until (x + y) > limit do
    fibs.push(x + y)
    y = x
    x = fibs.last
  end
  fibs
end

def even_numbers(fibs)
  fibs.find_all(&:even?)
end