=begin description
  class methods
    of_codon(input)
      input: string rep codon
      output: string rep protein

      rules
{
['AUG'] => 'Methionine',
%w(UUU UUC) => 'Phenylalanine'
%w(UUA UUG) =>  'Leucine',
%w(UCU UCC UCA UCG) => 'Serine',
%w(UAU UAC) => 'Tyrosine',
%w[UGU UGC]  'Cysteine',
['UGG'] => 'Tryptophan',
%w[UAA UAG UGA] => 'STOP'
}
    algorithm:
       return value if key includes input

    of_rna(input)
      input: string rep rna sequence
      output: array of strings rep proteins
      raise: InvalidCodonError if input isn't rna

    algorithm:
      split input into codons
      call of codon on each codon
        raise error if nil
        return result if current codon equals 'STOP'
        return result
=end

class InvalidCodonError < StandardError
end

class Translation
  CODONS = {
    ['AUG'] => 'Methionine',
    %w[UUU UUC] => 'Phenylalanine',
    %w[UUA UUG] => 'Leucine',
    %w[UCU UCC UCA UCG] => 'Serine',
    %w[UAU UAC] => 'Tyrosine',
    %w[UGU UGC] => 'Cysteine',
    ['UGG'] => 'Tryptophan',
    %w[UAA UAG UGA] => 'STOP'
  }

  def self.of_codon(codon)
    protein = CODONS.select do |codons, _|
      codons.include?(codon).values.first
    end
    raise InvalidCodonError if protein.nil?
    protein
  end

  def self.of_rna(rna)
    codons = rna.scan(/.../)
    codons.each_with_object([]) do |codon, proteins|
      return proteins if of_codon(codon) == 'STOP'
      proteins << of_codon(codon)
    end
  end
end
