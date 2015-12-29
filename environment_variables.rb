# creating a new environment variable COUNTRY
ENV["COUNTRY"] = "United Kingdom"
puts ENV["COUNRTY"] == "United Kingdom" ? "You're in the UK" : "You're not in the UK"

puts ENV['PATH']
puts ENV["MACHINE"]
puts ENV["USERS"]
puts ENV["USER"]

week_and_numbers = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", 100, 200, 300]

# we going to work on each, select, reject, collect

week_and_numbers.each  do |day_or_number|
  puts day_or_number
end


result = week_and_numbers.select do |day_or_number|
  day_or_number.kind_of?(String)
end

p result
puts result.length == 7
