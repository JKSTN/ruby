class Cat

  attr_accessor :color, :name, :fur_density, :breed

  def initialize( name, breed )
    puts "initialize is called on Cat"

    @name = name
    @breed = breed
  end

  def eat
    puts "#{@name} (who's actually a #{@breed}) is eating loudly .. om nom nom nom"
  end

  def is_valid?
    Cat.breeds.include?( @breed )
  end

  def self.breeds
    ["persian", "maincoon", "ginger", "exotic", "sphinx"]
  end

end


cats = [
  Cat.new( "Frodo Baggins", "gingeer" ),
  Cat.new( "Clamentina", "persian" ),
  Cat.new( "Heathcliff", "persian" ),
]

# cats.map{|cat| cat.eat }

# cats.each do |cat|
#   puts 
# end

cats.select{|c| c.is_valid? }.each{|c| c.eat }



# frodo.color = "brown"

# frodo.eat

# if frodo.is_valid?
#   puts "#{frodo.name} is a valid breed called #{frodo.breed}"
# else
#   puts "#{frodo.name} is actually not a valid breed since there's no usch thing as #{frodo.breed}"
# end

# puts "here are all the breeds possible"
# puts Cat.breeds


# frodo.fur_density = 1.455





