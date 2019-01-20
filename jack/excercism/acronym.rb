class Acronym
  def self.abbreviate(string = "Portable Network Graphic")
    string.scan(/(\A\w|(?<=\s)\w)/).flatten.join
  end
end

# regex or rubular is the code it means \A = start of the string
# \w = any word character so \A\w means word character at start of the string
# \s means whitespace and \s\w means word character after whitespace

