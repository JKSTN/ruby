class Scrabble

  def initialize(input)
    @input = input || ''
  end

  def score
    input.downcase.each_char.sum { |letter| Scrabble.scrabble_scores[letter] }
  end

  def self.score(input)
    self.new(input).score
  end

  private

  attr_reader :input

  def self.scrabble_scores
    @scrabble_scores ||= generate_score_table
  end

  def generate_score_table
    scrabble_key = Hash.new(0)
    %w(a e i o u l n r s t).each {|letter| scrabble_key[letter] = 1 }
    %w(d g).each {|letter| scrabble_key[letter] = 2 }
    %w(b c m p).each {|letter| scrabble_key[letter] = 3 }
    %w(f h v w y).each {|letter| scrabble_key[letter] = 4 }
    scrabble_key["k"] = 5
    %w(j x).each {|letter| scrabble_key[letter] = 8 }
    %w(q z).each {|letter| scrabble_key[letter] = 10 }
    return scrabble_key
  end


end
