require "rest-client"
require "nokogiri"

query_params = {"indexCatalogue" => "searchuk", "searchQuery" => "THE ART of TEA BLENDING", "wordsMode" => 0}
response = RestClient.get('http://www.tetley.co.uk/search-results', {:params => query_params})
puts response.body

tetley_html_doc = Nokogiri::HTML(response.body)
puts tetley_html_doc.css('a[id="The Art of Tea Blending"]')[0].attributes["title"]
