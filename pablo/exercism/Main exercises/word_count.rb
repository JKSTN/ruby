class Phrase

	attr_reader :phrase

	def initialize(phrase)
		@phrase = phrase
	end

	def word_count
		counts = Hash.new(0)
		phrase.downcase.scan(/\b[\w']+\b/).each {|word| counts[word] +=1}
		counts
	end

end