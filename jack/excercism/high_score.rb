class HighScoreTable
	def self.HighScore(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0]
	end
	def self.Top3(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0], array[1], array[2]
	end
	def self.Range(score)
		array = score.sort!	{|a,b| b <=> a}
		return array[0] - array[-1]
	end
	def self.LastScore(score)
		score[-1]
end

scores = [30, 50, 20, 70]
puts HighScoreTable.HighScore(scores)