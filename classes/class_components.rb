class Eyes
  def vision
    puts "I can see you!"
  end

  def how
    puts "I need light to see!"
    puts "I am useless in the dark."
  end

end

sight = Eyes.new
sight.vision
sight.how
puts sight.class
puts "I am useless in the dark.".class
puts 123.class
puts 3.5.class
puts true.class
puts false.class
p p.class

class Box
  def initialize(width, height)
    @width = width
    @height = height
  end

  def box_dimension
    "This box's dimensions are #{@width} x #{@height}"
  end

  def height
    @height
  end

  def width
    @width
  end
end

box1 = Box.new(23, 4)
puts box1.box_dimension
puts box1.height
puts box1.width

class Box
  def set_width=(width)
    @width=width
  end

  def set_height=(height)
    @height=height
  end
end


puts box1.set_height = 99
puts box1.set_width = 77
puts box1.box_dimension

class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def get_breadth
    @breadth
  end

  def get_length
    @length
  end

  def set_length=(length)
    @length = length
  end

  def set_breadth=(breadth)
    @breadth = breadth
  end

  def area
    @length * @breadth
  end
end

rect = Rectangle.new(30, 50)
puts rect.get_length
puts rect.get_breadth
puts rect.area


class Animal
  attr_accessor :name, :age, :trait

  def to_s
    "The pet name is #{name}, it's #{age} years old and very #{trait}."
  end
end

animal1 = Animal.new
animal1.name = "Kitty"
animal1.age = 12
animal1.trait = "loud"

puts animal1.name
puts animal1.age
puts animal1.trait
puts animal1
puts "#{animal1}"
