require_relative '../../lib/project-euler/pythagorean_triplets'

describe '#pythagorean_triplet' do
  it 'returns an array with the pythagorean triplet' do
    expect(pythagorean_triplet(12)).to eq([3, 4, 5])
  end
end


describe '#all_squares' do
  it 'returns all the square numbers up to the max' do
    expect(all_squares(25)).to eq([1,4,9,16,25])
  end
end
