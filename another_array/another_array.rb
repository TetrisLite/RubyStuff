array = [1, 3.3, "Camel", "Goat"]
data = [1, 2.0, 4.9, "goat", "camel"]
puts data
data.each{|datum| puts datum}

p data[0]
p data[-1]
p data[-1] == data.last
data[0] = "hello world!"
p data

# push method
data << "cheese"
p data

# pop method
data.pop
p data

names = Array.new(6, "Adam")
p names

digits = Array(0..9)
p digits
p digits.at(5) == digits[5]

fruits = ["Apple", "Banana", "Pineapple"]
veggies = ["Carrot", "Radish", "Cabbage"]
edibles = fruits + veggies
puts "Yeah, the fruit is part of our list" if fruits.include?("Apple")
p fruits.first
p edibles.last
p edibles.first(4)
p edibles.reverse
p fruits.index("Banana")

new_edibles = edibles - fruits
p new_edibles

numbers = [2, 1, 3, 34, 8]
p numbers.sort
p numbers.reverse.sort
p numbers.sort.reverse

single_letters = ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]
p single_letters
p single_letters[0,5]
p single_letters[-5, 5]
p single_letters[0..4]
p single_letters[-5..-1]
new_letters_array = Array.new(single_letters)
p new_letters_array
p numbers.concat(single_letters)
p single_letters.concat(numbers)
p single_letters.size
p single_letters.delete("d")
p single_letters.size

puts single_letters.inspect
p single_letters
p single_letters.shift

a = [1, 1, 2, 2, 3, 3, 4]
b = [5, 5, 4, 4, 3, 3, 2]
p c = a | b
p c = b | a
p a & b
p b & a

multi_array = [
                [1, 3.0, "sheep", "camel"],
                [8, 4.7, "groovy", "java"],
                [9, 5, "cygnus", "andromeda"],
                [82, 31, "cotton", "silk"]
              ]

# output sheep
p multi_array[0][2]

# output silk in four ways
p multi_array[3].last
p multi_array.last[-1]
p multi_array[3][3]
p multi_array.last.last

multi_array.each do |one|
  one.each do |two|
    puts two
  end
end


media = Array.new(3)
p media
p media[0] = Array.new(3, "radio")
p media[1] = Array.new(3, "television")
p media[2] = Array.new(3, "newspaper")


box = []
10.times do |row|
  box[row] = []

  10.times do
    box[row] << 1
  end
end

for row in box
  puts row.inspect
end
