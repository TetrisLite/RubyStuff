fruits = {"red" => "apple", "yellow" => "banana", "green" => "guava"}

p fruits["yellow"]

fruits = {1 => "apple", 4.7 => "banana", 3.245 => "guava"}
p fruits[3.245]

fruits = Hash.new
fruits[:red] = "apple"
p fruits.store("yellow", "banana")
p fruits.store("green", "guava")

countries = {:in => "india", :us => "united states", :hu => "hungary",
  :uk => "united kingdom", :no => "norway"}
puts "The size of Hash countries is #{countries.count}"

p countries.keys
p countries.values

countries.each_pair {|key, value| puts "Key: #{key.upcase}, value: #{value.upcase}"}
countries.each_key {|key| puts "Key: #{key.upcase}"}
countries.each_value {|value| puts "Value: #{value.upcase}"}

new_countries = countries.invert
p new_countries

names = Hash.new
names["clever"] = "Jones"
names["hot"] = "Julia"
names["funky"] = "Adam"
names["sporty"] = "Beckham"

puts names["hot"]
puts names.fetch("funky")
puts names.values_at("clever", "sporty")
puts names.has_key?("hot")
puts names.key?("funky")
puts names.include?("clever")

puts names.has_value?("Jones")
puts names.value?("milk")

names2 = names.dup
p names2.keys
p names2.eql?(names)
puts names2.delete_if{|key, value| key == "hot"}
p names2.empty?
p names2.clear

puts names
puts names.shift
p names.delete("funky")
p names

people = Hash.new

people.store("dwarf", "smith")
people.store("tall", "dave")
people.store("fat", "gracie")

# merge method

myhash = names.merge(people)
p myhash
p people
p names

myhash = names.merge!(people)
p myhash
p people
p names

p names.assoc("hot")
p people.rassoc("smith")
