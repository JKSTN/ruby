class HighScores
	def initialize(scores)
		@scores = scores
	end

	def scores
		@scores
	end

	def personal_best
		array = scores.sort!	{|a,b| b <=> a}
		return array[0]
	end

	def personal_top
		array = scores.sort!	{|a,b| b <=> a}
		return array[0], array[1], array[2]
	end

	def range
		array = scores.sort!	{|a,b| b <=> a}
		return array[0] - array[-1]
	end

	def latest
		scores[-1]
	end

end
