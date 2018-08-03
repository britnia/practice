require_relative '../../lib/project-euler/nth_prime'

describe '#nth_prime' do
  it 'gives the nth prime number' do
    expect(nth_prime(6)).to eq(13)
  end
end