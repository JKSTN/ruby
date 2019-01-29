class Pangram
  def self.pangram?(sentence)
    ("a".."z").all? { |chars| sentence.downcase.include? (chars) }
  end
end
