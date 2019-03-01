class Scrabble

  attr_reader :input

  def initialize(input)
    @input = input.downcase
  end

  # def score_original
  #   if input == nil || input == ""
  #     total_score == 0
  #   else 
  #   value_1 = input.split('').count {|i| ["a","e","i","o","u","l","n","r","s","t"].include? i }
  #   value_2 = input.split('').count {|i| ["d","g"].include? i } * 2
  #   value_3 = input.split('').count {|i| ["b","c","m","p"].include? i } * 3
  #   value_4 = input.split('').count {|i| ["f","h","v","w","y"].include? i } * 4
  #   value_5 = input.split('').count {|i| ["k"].include? i } * 5
  #   value_8 = input.split('').count {|i| ["j","x"].include? i } * 8
  #   value_10 = input.split('').count {|i| ["q","z"].include? i } * 10

  #   total_score = (value_1 + value_2 + value_3 + value_4 + value_5 + value_8 + value_10)
  #   total_score
  # end



  def score

    scrabble_key = Hash.new(0)
      ["a","e","i","o","u","l","n","r","s","t"].each {|letter| scrabble_key[letter] = 1 }
      ["d","g"].each {|letter| scrabble_key[letter] = 2 }
      ["b","c","m","p"].each {|letter| scrabble_key[letter] = 3 }
      ["f","h","v","w","y"].each {|letter| scrabble_key[letter] = 4 }
      scrabble_key["k"] = 5
      ["j","x"].each {|letter| scrabble_key[letter] = 8 }
      ["q","z"].each {|letter| scrabble_key[letter] = 10 }
      
      input.each_char.map { |letter| scrabble_key[letter] }.sum
  end

end


# create a hash with all alphabet as keys and scores as the values
# loop over the string one character at a time and compare to the hash and use an inject to add it all up. 