module Animal

  def self.all_animals
    puts ["cats", "dogs"].inspect
  end

  def growl
    puts "ARGHHHH!"
  end
end

module Human
  def self.all_humans
    puts ["Intelligent", "Stupid"].inspect
  end

  def walk
    puts "walking"
  end

end


class Alien
  include Animal
  include Human


  def <=>( other )
    self.height <=> other.height
  end


end



# ian = Alien.new
# ian.walk
# ian.growl


Alien.all_animals
Alien.all_humans

