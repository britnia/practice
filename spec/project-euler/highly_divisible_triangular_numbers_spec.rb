require_relative '../../lib/project-euler/highly_divisible_triangular_numbers'

describe '#highly_divisible_triangular_number' do
  it 'gives the first triangular number with n factors' do
    expect(highly_divisible_triangular_number(5)).to eq(28)
  end
end

describe '#count_factors' do
  it 'returns the number of positive factors of an integer' do
    expect(count_factors(28)).to eq(6)
  end
end