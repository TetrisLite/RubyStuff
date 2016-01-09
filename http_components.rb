require "uri"

uri_string = "https://en.wikipedia.org/wiki/List_of_HTTP_header_fields"
@uri = URI.parse(uri_string)

puts @uri.path == "/wiki/List_of_HTTP_header_fields"
puts @uri.port == 443
puts @uri.host == "en.wikipedia.org"
puts @uri.scheme == "https"
puts @uri.query == nil
puts @uri.query.nil?
puts @uri.query == nil

uri_string2 = "http://www.google.co.uk/webhp?ei=QxiRVrnwDIv2aMCAoQg&ved=0EKkuCAUoAw#q=morning"
@uri2 = URI.parse(uri_string2)

puts @uri2.scheme == "http"
puts @uri2.port == 80
puts @uri2.host == "www.google.co.uk"
puts @uri2.path == "/webhp"
puts @uri2.query == "ei=QxiRVrnwDIv2aMCAoQg&ved=0EKkuCAUoAw"
puts @uri2.fragment == "q=morning"



uri_string3 = "http://www.google.co.uk/?gfe_rd=cr&ei=NhiRVsfhNu_S8AfsmK6gAQ&gws_rd=ssl#q=morning"
@uri3 = URI.parse(uri_string3)

puts @uri3.scheme == "http"
puts @uri3.host == "www.google.co.uk"
puts @uri3.path == "/"
puts @uri3.port == 80
puts @uri3.query == "gfe_rd=cr&ei=NhiRVsfhNu_S8AfsmK6gAQ&gws_rd=ssl"
puts @uri3.fragment == "q=morning"
