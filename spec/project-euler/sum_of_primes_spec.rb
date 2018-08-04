# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require_relative '../../lib/project-euler/sum_of_primes'

describe '#sum_of_primes' do
  it 'returns the sum of all primes up to a value' do
    expect(sum_of_primes(10)).to eq(17)
  end
end