# local variable @yes
# class variable @@yes
# global variable $yes
# instance variable @yes
# constant variable EYES

@food = "fish"

def meal
   @food
end

puts meal

$country = "United States Of America"

def nation
  $country
end

puts nation

class Ship
  @@type = "yacht"
  @@count = 0

  def self.cost
    "costs $2,000,000"
  end

  def self.crewmen
    @@count = @@count + 1
    @@count
  end
end

puts Ship.cost
# #
p Ship.singleton_methods

puts Ship.crewmen
puts Ship.crewmen
puts Ship.crewmen


class Travel
  def initialize
    @date = "1 January"
    @location = "Australia"
    @duration = "2 weeks"
  end

    def date
      @date
    end

    def duration
      @duration
    end

    def location
      @location
    end

    def date=(date)
      @date = date
    end

    def location=(location)
      @location = location
    end

    def duration=(duration)
      @duration = duration
    end
end

@travel = Travel.new

puts @travel.location
@travel.location = "Dubai"
puts @travel.location

class Swimming
  LANE = 8
end


puts Swimming::LANE
