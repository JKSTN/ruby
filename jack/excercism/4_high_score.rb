class HighScoreTable

  #HASSAN: convention dictates high_score ...
  def self.HighScore(score)
    #usually there's a good reason to use sort! since it changs the source
    array = score.sort! {|a,b| b <=> a}

    #HASSAN's alt 1:
    # return score.sort.reverse[0]

    #HASSAN's alt 2:
    # return score.sort[-1]

    #HASSAN's alt 2:
    # return score.max

    return array[0]
  end

  def self.Top3(score)
    array = score.sort! {|a,b| b <=> a}

    #alt
    # array.sort.reverse[0..2]

    #alt
    # # array.sort.reverse.first(3)

    return array[0], array[1], array[2]
  end

  #convention -- space after function end
  def self.Range(score)
    array = score.sort! {|a,b| b <=> a}
    return array[0] - array[-1]
  end
  def self.LastScore(score)
    score[-1]
  end
end
