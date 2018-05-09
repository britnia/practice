/ *If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
*/

require_relative '../../lib/project-euler/multiples_of_3_and_5'

describe 'threes_and_fives' do
  it 'gives the sum of all numbers under a given number that are divisible by 3 or 5' do
    expect(sum_threes_and_fives(10)).to eq(23)
  end

  it 'gives the sum of numbers under 1000 divisible by 3 or 5' do
    expect(sum_threes_and_fives(1000)).to eq(233168)
  end
end