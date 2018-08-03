require_relative '../../lib/project-euler/largest_palindrome_product'

describe '#largest_palindrome_product' do
  it 'returns the largest palindrome product for factors if given size' do
    expect(largest_palindrome_product(2)).to eq(9009)
  end
end

describe '#is_palindrome' do
  it 'returns true if the number is a palindrome' do
    expect(is_palindrome?(9009)).to be_truthy
  end

  it 'returns false if the number is NOT a palindrome' do
    expect(is_palindrome?(9001)).to be_falsey
  end
end

describe '#get_min' do
  it 'returns the correct smallest product for the given number of digits' do
    expect(get_min(3)).to eq(100)
    expect(get_min(4)).to eq(1000)
  end
end

describe '#get_max' do
  it 'returns the correct largest product for the given number of digits' do
    expect(get_max(3)).to eq(999)
    expect(get_max(4)).to eq(9999)
  end
end