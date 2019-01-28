class HighScores
  def initialize(scores)
    @scores = scores
  end

  attr_reader :scores

  def personal_best
    scores.max
  end

  def personal_top
    scores.sort.reverse.first(3)
  end

  def latest
    scores.last
  end

  def report
    if personal_best - latest == 0
      return "Your latest score was #{latest}. That's your personal best!"
    else
      "Your latest score was #{latest}. That's #{personal_best - latest} short of your personal best!"
    end
  end

end
