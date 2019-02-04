class Matrix

  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
   matrix.split("\n").map do |row| 
      row.split(" ").map {|cell| cell.to_i }
    end
  end

  def columns
   matrix1 = matrix.split("\n").map{|row| row.split(" ").map{|cell| cell.to_i }  }
   matrix2 = [ matrix1.map { |cell| cell[0] }, matrix1.map { |cell| cell[1] }, matrix1.map { |cell| cell[2] } ]
  end

 end

