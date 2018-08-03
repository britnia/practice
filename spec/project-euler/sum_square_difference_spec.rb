# The sum of the squares of the first ten natural numbers is,
#   12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#   (1 + 2 + ... + 10)2 = 552 = 3025
#  Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

require_relative '../../lib/project-euler/sum_square_difference'

describe '#sum_square_difference' do
  it 'gets the difference of the sum of the squares and the square of the sum' do
    expect(sum_square_difference(1,10)).to eq(2640)
  end
end

describe '#square_of_sums' do
  it 'gets the square of the sum' do
    expect(square_of_sums(1,10)).to eq(3025)
  end
end

describe '#sum_of_squares' do
  it 'gets the sum of the squares' do
    expect(sum_of_squares(1,10)).to eq(385)
  end
end