class Phrase

  CLEANER_PATTERN = /\b[\w']+\b/
  # constant requires capital letters, and must be defined outside of the methods. You can't change the constant once defined. 

  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count
    cleaned.each_with_object(Hash.new(0)) do |word, result|
      result[word] += 1
    end
  end

  private

  def cleaned
    sentence.downcase.scan(CLEANER_PATTERN)
  end

end

