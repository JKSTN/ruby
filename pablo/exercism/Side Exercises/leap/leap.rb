class Year
  def self.leap?(year)
    year % 400 == 0 && year % 100 == 0 || year % 100 != 0 && year % 4 == 0
   
end
end

puts Year.leap?(1997)