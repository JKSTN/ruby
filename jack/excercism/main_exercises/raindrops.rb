class Raindrops

  def self.convert(number)
    plings = ""
    plings += "Pling" if (number % 3).zero?
    plings += "Plang" if (number % 5).zero?
    plings += "Plong" if (number % 7).zero?
    plings += "#{number}" if plings.empty?
    plings
  end


end
