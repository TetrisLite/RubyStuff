module Tools
  def spanner
    "I can tighten"
  end

  def wrench
    "I can twist"
  end

  def screwdriver
    "I can screw things"
  end
end

class Car
  def spanner
    "I can tighten"
  end

  def wrench
    "I can twist"
  end

  def screwdriver
    "I can screw things"
  end
end

@car1 = Car.new

puts @car1.spanner

class Garden
  include Tools
end

@garden1 = Garden.new
puts @garden1.screwdriver

class Home
  extend Tools
end
puts Home.wrench


class Workshop
  include Tools
  extend Tools
end


@workshop1 = Workshop.new
puts @workshop1.spanner

puts Workshop.spanner

module Tools
  puts self
  puts "is finish"
  def self.hammer
    "I like to hammer things hard."
  end
end

# puts Tools.spanner
puts Tools.respond_to?(:spanner)
puts Tools.respond_to?(:hammer)



class Garage
  include Tools
end

puts Garage.respond_to?(:hammer)
