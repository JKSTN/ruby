class Series

attr_accessor :series

  def initialize(series)
    @series = series
  end

  def slices(length)
    raise ArgumentError if length > series.length

    series.each_char.each_cons(length).map { |x| x.join()}
  end
  
end