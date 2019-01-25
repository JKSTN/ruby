class HighScores
	def scores(score)
		return score
	end

	def self.personal_best(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0]
	end

	def self.personal_top(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0], array[1], array[2]
	end

	def self.range(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0] - array[-1]
	end

	def self.latest(score)
		score[-1]
	end

end