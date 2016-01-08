require "open-uri"
require "nokogiri"

page = Nokogiri::HTML(open ("http://ruby.bastardsbook.com/files/hello-webpage.html"))

p page.class

# get the title element
puts page.css("title")

# get the text of first <li> element
puts page.css("li")[0].text

# the <div> element with an id of "funstuff"
puts page.css("div#funstuff")

# the <li> element with a data-category of news
page.css("li[data-category]")

# the <a> element nested inside the <div> element that has an id of 'reference'
puts page.css("div#referenec a")

puts page.css("title")[0].name

puts page.css("title")[0].text

links = page.css("a")
puts links.length
puts links[0].text
puts links[0]["href"]

# using select for a collection
news_links = page.css("a").select {|link| link["data-category"] == "news"}
puts news_links
puts news_links.class
