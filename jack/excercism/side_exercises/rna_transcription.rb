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