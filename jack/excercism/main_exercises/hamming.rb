class Hamming

  def self.compute(string1, string2)
    if string1.length == string2.length
      elements_boolean = string1.split("").zip(string2.split("")).map { |x, y| x == y }
      elements_boolean.count(false)
    else
      raise ArgumentError
    end

  end

end

