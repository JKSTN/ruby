class Complement 
  def self.of_dna(rna)
    rna_s = rna.split(//)
    rna_s.each { |x|
      if x == "G"
        x.replace "C"
      elsif x == "C"
        x.replace "G"
      elsif x == "T"
        x.replace "A"
      elsif x == "A"
        x.replace "U"
      else x == ""
        x 
      end
    }
    rna_s.join
  end
end


# Given a DNA strand, return its RNA complement (per RNA transcription).
# Both DNA and RNA strands are a sequence of nucleotides.
# The four nucleotides found in DNA are adenine (A), cytosine (C), guanine (G) and thymine (T).
# The four nucleotides found in RNA are adenine (A), cytosine (C), guanine (G) and uracil (U).
# Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:
# G -> C
# C -> G
# T -> A
# A -> U
