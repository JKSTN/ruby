class Acronym
  def self.abbreviate(string = "Portable Network Graphic")
    string.scan(/(\A\w|(?<=\s)\w)|((?<=\-)\w)/).flatten.join.upcase
  end

  def self.abbreviate_h(string = "Portable Network Graphic")
    string.split(/\s+/)
      .map{|s| s[0] }   #get first letters
      .select{|s| /\A[A-Z]\z/ =~ s }    #only caps
      .join
  end
end

# regex or rubular is the code it means \A = start of the string
# \w = any word character so \A\w means word character at start of the string
# \s means whitespace and \s\w means word character after whitespace

