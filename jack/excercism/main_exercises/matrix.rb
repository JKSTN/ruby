class Matrix

  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    matrix.split("\n")
    matrix[0].split(" ")
  end

 end

