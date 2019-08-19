=begin
input:
  string rep DNA strand to check against
  string rep DNA strand to check

output: integer rep Hamming distance between two inputs

rules:
  check against shorter length of two strands
  return 0 if no difference
  doesn't mutate inputs

algorithm:
  for each index:
    initialize count
    check if char in original equals char in test
    if not, increment a count
    return count


=end
require 'pry'

class DNA
  attr_reader :original_strand

  def initialize(original_strand)
    @original_strand = original_strand
  end

  def stop_checking?(test_strand, idx)
    idx + 1 == test_strand.length || idx + 1 == original_strand.length
  end

  def hamming_distance(test_strand)
    count = 0
    original_strand.each_char.with_index do |base, idx|
      count += 1 if base != test_strand[idx]
      break if stop_checking?(test_strand, idx)
    end
    count
  end
end

strand = 'GACTACGGACAGGGTAGGGAAT'
distance = 'GACATCGCACACC'
p DNA.new(strand).hamming_distance(distance)




