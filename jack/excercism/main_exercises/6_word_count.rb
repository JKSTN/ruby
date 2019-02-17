class Phrase

  attr_writer :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def word_count

    array = @sentence.split
    clean1 = array.map { |element| element.gsub( /(\A[\W])/, "" ) }
    clean2 = clean1.map { |element| element.gsub( /(\W)\z/, "" ) }

    b = Hash.new(0)
    
    clean2.each do |v|
    b[v] += 1
    end
  end

end

phrase = Phrase.new("one of each")
puts phrase.word_count





# phrase.split.map { |element| element.gsub( / [ (\A\W) (\z\W) ] / , "" ) }

# array[4].gsub( /[\A\W]/, "" )
# # this works for dropping the commas from it

# array[1].gsub( / (\A[\W]) /, "" )
# # version 3

# array[4].gsub( /(\W)\z/, "" )
# # end of the string - note the position of z (no I am not joking)

# array = phrase.split
# clean1 = array.map { |element| element.gsub( /(\A[\W])/, "" ) }
# clean2 = clean1.map { |element| element.gsub( /(\W)\z/, "" ) }
