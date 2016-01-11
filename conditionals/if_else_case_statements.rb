x = 1

if x > 2
  puts "x is greater than 2"
elsif x <= 2 && x != 0
  puts "x is 1"
else
  puts "I can't guess the number"
end

num = 12

puts "number is 12" if num == 12

# unless statements

value = 31

unless value > 35
  puts "value is less than 35"
else
  puts "value is greater than 35"
end

x = false
puts "The value is false, so this statement will be executed" unless x

age = 5

case age
when 0..2
  puts "baby"
when 3..6
  puts "little child"
when 7..12
  puts "child"
when 13..18
  puts "youth"
else
  puts "adult"
end
