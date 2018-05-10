# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require_relative '../../../lib/project-euler/largest_prime_factor/fastest'

describe '#largest prime factor' do
  it 'gets the largest prime factor of a number' do
    expect(largest_prime_factor(13195)).to eq(29)
  end

  it 'answers the dang question' do
    expect(largest_prime_factor(600851475143)).to eq(6857)
  end
end