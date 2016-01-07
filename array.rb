months = Array.new
puts months.empty?

months = Array.new(12)
puts months.size
p months
month = Array.new(12, 'month')
p month
month.clear
p month.empty?

num = Array.new(10) {|e| e = e * 2}
p num

month_abbrv = Array.[]("jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec")

months = ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
p months

digits = Array(0..9)
p digits

months = %w[nil January Febuary March April May June July August September October November December]
p months
months[0] = nil
years = Array(2000..2009)
p years
puts years.class
puts years[0].class
hodge_podge = ["January", 1, :year, [2006, 01, 01]]
hodge_podge.each {|element| p element.class}

p years.at(2)

puts "The event is schedules for #{months.at(6)}, #{years.at(5)}"

puts years[2, 4].inspect

p years[3..7]
p years.slice(2)
p years.slice(0, 4)
p years.slice(1..6)
p years.include?(2008)

q1 = %w[January Febuary March ]
q2 = %w[April May June ]
q3 = %w[July August September]
q4 = %w[October November December]
half1 = q1 + q2
p half1
half2 = q3 + q4
p half2

yrs = [1999]
yrs << 2000
p yrs
yrs << 2001 << 2002 << 2003 << 2004
p yrs

last_part = q3.concat(q4)
p last_part

tue = ["shop", "make pie", "sleep"]
wed = ["shop", "make pie", "read", "sleep"]

p tue & wed

p wed - tue

p tue | wed

shopping_list = %w[cheese bread crackers potatoes carrots cheese]
p shopping_list.uniq

fruits = %w[apple orange banana]
p fruits.pop
p fruits
fruits.push("mango")
p fruits

bob = ["full", 40, "yes"]
lou = ["part", 23, "no"]
schlomo = ["full", 40, "yes"]

p lou == lou
p bob == schlomo
p schlomo == lou

p bob == schlomo
p bob.eql?("full, 40, yes")

p lou <=> lou
p bob <=> lou
p lou <=> schlomo
p months
months[5..7] = "Mai", "Juni", "Juli"
p months
months[5, 3] = "May", "June", "July"
p months
p months.join
p months.join(", ")

p months.compact.join(", ")

dates = [4, 5, 6, 7]
p dates.shift
p dates
p dates.unshift 4
p dates.unshift(2,3)

month_a = %w[nil jan feb mar apr may jun jul aug sep oct nov dec]
p month_a.delete("nil")

p month_a.delete("Morning") {"Morning wasn't found! What do you plan to do about that?"}

p month_a.delete_at(9)
p month_a[9] = ("oct")
month_a.each {|month| print "#{month.capitalize} "}

month_a_2015 = month_a.map {|month| "#{month.capitalize} 2015"}
p month_a_2015

x = [2, 5, 1, 7, 23, 99, 14, 27]
x.sort!
p x

numbers_in_words = %w[one two three four five six seven eight nine ten]
p numbers_in_words.reverse

d2 = [["January", 2015],
       ["Febuary", 2015],
       ["March", 2015]
     ]
p d2

yrs = [2012, 2013, 2014]
days = [31, [28, 29], 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
months = ["Jn", "Fb", "Mr", "Ap", "Ma", "Ju", "Jl", "Au", "Sp", "Oc", "Nv", "Dc"]

d3 = [yrs, days, months]
p d3
p d2.flatten

p d2.transpose
