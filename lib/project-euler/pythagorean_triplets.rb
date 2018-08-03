def pythagorean_triplet num
  squares = all_squares(num ** 2)
  squares.each do |i|
    squares.each do |m|
      if squares.include?(i+m)
        a = Integer.sqrt(i)
        b =  Integer.sqrt(m)
        c = Integer.sqrt(i+m)
        if a + b + c == num
          return [a, b, c]
        end
      end
    end
  end
  return "none exists"
end

def all_squares max
  i = 1
  squares = []
  until i ** 2 > max
    squares.push(i ** 2)
    i += 1
  end
  squares
end