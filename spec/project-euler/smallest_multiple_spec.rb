require_relative '../../lib/project-euler/smallest_multiple'

describe '#smallest_multiple' do
  it 'returns the smallest even multiple of all numbers in the range'do
    expect(smallest_multiple(1,10)).to eq(2520)
  end
end

describe '#evenly_divisible?' do
  it 'returns true if the number is evenly divisible by every number in the range' do
    expect(evenly_divisible?(2520, 1,10)).to eq true
  end

  it 'returns false if the number is NOT evenly divisible by every number in the range' do
    expect(evenly_divisible?(2519, 1,10)).to eq false
  end
end