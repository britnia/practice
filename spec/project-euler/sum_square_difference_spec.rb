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