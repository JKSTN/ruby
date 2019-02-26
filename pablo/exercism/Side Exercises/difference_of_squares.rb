class Squares
  
  def initialize(integer)
  	@range = (1..integer)
  end

  def square_of_sum
  	#sum = @range.inject {|sum, n| sum + n} ** 2
    @range.sum ** 2
  end

  def sum_of_squares
  	#sum = @range.inject {|sum, n| sum + n**2}
    @range.map{|x| x**2}.sum
  end

  def difference
    square_of_sum-sum_of_squares
  end
  
end
