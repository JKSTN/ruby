class Series

  def initialize(input)
    @input = input
  end

  def slices(n)
    arr = @input.split("")
    if n > arr.length
    	raise ArgumentError
    else
    	arr.each_cons(n).map { |a| a.join("") }
    end

  end

end