class SpaceAge

  EARTH = 31557600.0
  FACTORS = {
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }


  attr_accessor :age

  def initialize(age)
    @age = age
  end

  def on_earth
    @age/EARTH
  end

  FACTORS.each do |planet, relative_time|
    define_method("on_#{planet}") do 
      on_earth / relative_time
    end
  end

end
