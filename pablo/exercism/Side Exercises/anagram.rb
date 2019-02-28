class Anagram

	def initialize(anagram)
		@anagram = anagram
	end

	def match(word)
		word.to_s.split(",").map {|word| word.each_char {|letter| anagram.include?(letter)}}
	end

	private

	attr_reader :anagram


end