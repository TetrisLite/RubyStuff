# creating a new environment variable COUNTRY
ENV["COUNTRY"] = "United Kingdom"
puts ENV["COUNRTY"] == "United Kingdom" ? "You're in the UK" : "You're not in the UK"

puts ENV['PATH']
puts ENV["MACHINE"]
puts ENV["USERS"]
puts ENV["USER"]

week_and_numbers = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", 100, 200, 300]

# we going to work on each, select, reject, collect, find

week_and_numbers.each  do |day_or_number|
  puts day_or_number
end

result = week_and_numbers.select do |day_or_number|
  day_or_number.kind_of?(String)
end

p result
puts result.length == 7

output = week_and_numbers.select do |day_or_number|
  day_or_number.kind_of?(Array)
end

p output
puts output.empty?


numericals = [23, 42, 88, 99, 104, 148, 199, 275, 346, 999, 1024, 1588]

collection_result = numericals.collect do |numerical| 
  numerical * 2
end

p collection_result
