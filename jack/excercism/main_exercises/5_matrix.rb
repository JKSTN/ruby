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

  def columns_transpose
    rows.transpose
  end

  def column_jack_original
    matrix1 = matrix.split("\n").map{|row| row.split(" ").map{|cell| cell.to_i }  }
    matrix2 = [ matrix1.map { |cell| cell[0] }, matrix1.map { |cell| cell[1] }, matrix1.map { |cell| cell[2] } ]
  end

  def column_transpose_manual
    columns = rows[0].length.times.map{ [] }
    rows.each_with_index do |row, r|
      row.each_with_index do |cell, c|
        puts "#{r}, #{c} / print #{cell}"
        columns[c][r] = cell
      end
    end
    # puts columns.map { |column| column.inspect }
    return columns
  end

 end

