# creating a new environment variable COUNTRY
ENV["COUNTRY"] = "United Kingdom"
puts ENV["COUNRTY"] == "United Kingdom" ? "You're in the UK" : "You're not in the UK"

puts ENV['PATH']
puts ENV["MACHINE"]
puts ENV["USERS"]
puts ENV["USER"]
