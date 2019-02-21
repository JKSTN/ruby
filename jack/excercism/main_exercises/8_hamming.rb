class Hamming

  def self.compute(string1, string2)_jack
    if string1.length == string2.length
      elements_boolean = string1.split("").zip(string2.split("")).map { |x, y| x == y }
      elements_boolean.count(false)
    else
      raise ArgumentError
    end

  def self.compute(string1, string2)_hassan
    if string1.length == string2.length
      string1.length.times.count{|i| string1[i] == string2[i]   }
    else
      raise ArgumentError
    end  

  # string1.length.times.count{|i| string1[i] == string2[i]   }
  # i = 0
  # count = 0
  # loop do 
  #   break if string1[i].nil?
  #   count += 1 if string1[i] == string2[i]
  #   i += 1
  # end


end
