require 'pry'
def largest_product_in_a_series series, length
  arry = series.to_s.split('').map { |i| i.to_i}
  max_index = arry.size - 1
  largest_prod, top_index, bottom_index = 0, 0, length-1

  while bottom_index < max_index
    prod = 1
    (top_index..bottom_index).each do |i|
      prod *= arry[i]
    end
    largest_prod = prod if prod > largest_prod
    top_index += 1
    bottom_index += 1
  end
  largest_prod
end