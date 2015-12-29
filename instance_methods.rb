class Calculator
  def add(a,b)
    a + b
  end

  def subtract(a,b)
    a - b
  end

  def divide(a,b)
    a / b
  end

  def multiply(a,b)
    a * b
  end
end

@casio = Calculator.new
@sharp = Calculator.new
@canon = Calculator.new
@royal = Calculator.new

puts @casio.add(8,8)
puts @sharp.subtract(8,8)
puts @canon.divide(8,8)
puts @royal.multiply(8,8)

puts @casio.respond_to?(:exponent)
puts @sharp.respond_to?(:exponent)
puts @canon.respond_to?(:exponent)
puts @royal.respond_to?(:exponent)

class Calculator
  def exponent(a,b)
    a**b
  end
end


puts @casio.respond_to?(:exponent)
puts @sharp.respond_to?(:exponent)
puts @canon.respond_to?(:exponent)
puts @royal.respond_to?(:exponent)

class Calculator
  def random_calculation(number)
    puts "I am in the instance method."
    yield(number)
    puts "I am back in the instance method."
  end
end


puts @casio.random_calculation(9) {|num| puts "I am in the block:"; num**2}
# puts @casio.random_calculation(2) {|num|  num**2}
