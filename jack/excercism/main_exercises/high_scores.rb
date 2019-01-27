class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def personal_best
    array = scores.sort!  {|a,b| b <=> a}
    return array[0]
  end

  def personal_top
    scores.sort.reverse.first(3)
  end

  def range
    array = scores.sort!  {|a,b| b <=> a}
    return array[0] - array[-1]
  end

  def latest
    scores[-1]
  end

  def report
    #you can use 'latest' here ..  since it's part of the same object, you can call those methods
    #like this, "your latest score was #{latest}. That's #{personal_best - latest} short of..."
    return "Your latest score was #{scores[-1]}. That's #{scores.max - scores[-1]} short of your personal best!"
  end

end
