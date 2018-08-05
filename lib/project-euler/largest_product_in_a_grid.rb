require 'matrix'
def largest_product_in_grid grid, cons
  prods = [ get_largest(grid, cons),
    get_largest(grid.transpose, cons),
    get_largest(left_diagonal(grid), cons),
    get_largest(right_diagonal(grid), cons)
  ].max
end

def get_largest grid, cons
  largest_prod = 1
  grid.each do |i|
    p = get_largest_consecutive_product_by_row i, cons
    largest_prod = p if p > largest_prod
  end
  largest_prod
end

def left_diagonal grid
  flip_grid = grid.each { |i | i.reverse! }
  right_diagonal(flip_grid)
end

def right_diagonal grid
  padding = grid.size - 1
  padded_matrix = []
  grid.each do |row|
    inverse_padding = grid.size - padding
    padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
    padding -= 1
  end
  diamond = padded_matrix.transpose.map(&:compact).reject { |i| i.empty? }
  diamond
end

def get_largest_consecutive_product_by_row arry, cons
  return 0 if arry.size < cons
  x , y = 0, cons - 1
  prod = 0
  until y  == arry.size
    p = 1
    (x..y).each { |i| p *= arry[i]  }
    x += 1
    y += 1
    prod = p if p > prod
  end
  prod
end