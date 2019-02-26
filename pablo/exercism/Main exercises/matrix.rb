class Matrix
  attr_accessor :matrix
  attr_reader :rows
  attr_reader :columns

  def initialize(matrix)
  	@matrix = matrix
  end

  def rows
  	matrix.split("\n").map { |row| row.split(" ").map {|x| x.to_i}}
  end

  def columns
  	rows.transpose
  end
end
