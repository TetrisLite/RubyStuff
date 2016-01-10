require "rest-client"
require "nokogiri"
require "pry"


response = RestClient.get('http://www.flora.com/')
flora_html_doc = Nokogiri::HTML(response.body)
puts flora_html_doc

puts flora_html_doc.css('a[title="close"]')[0].attributes["href"].value == "#"


puts flora_html_doc.css('a[title="close"]').size



puts response.code == 200

puts "what follows is all the response headers from the url above:"
puts response.headers[:cache_control]
puts "\nnarrowing down specific headers, the following is for cache_control:"
puts response.headers[:cache_control]
puts "\nthe following is what's returned for set cookie header:"
puts response.headers[:set_cookie]

puts "\n the following is what's returned for all the response cookies:"
puts response.cookies
puts response.class
p response.request
