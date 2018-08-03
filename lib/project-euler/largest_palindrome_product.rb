require 'pry'
def largest_palindrome_product digits
  max = get_max(digits)
  min = get_min(digits)
  palindromes = []
  max.downto(min) do |i|
    i.downto(min) do |n|
      palindromes.push(n * i) if is_palindrome?(n * i)
    end
  end
  palindromes.max
end

def is_palindrome? num
  return true if num.to_s == num.to_s.reverse
  return false
end

def get_min digits
  zeroes = ''
  (digits-1).times {zeroes += '0' }
  "1#{zeroes}".to_i
end

def get_max digits
  nines = ''
  digits.times { nines += '9'}
  nines.to_i
end