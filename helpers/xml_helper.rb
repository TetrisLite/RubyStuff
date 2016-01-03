require "nokogiri"

class XmlHelper
  def self.get_file(filename)
    xml_content = File.read("#{(__dir__)}/../data/xml/#{filename}.xml")
    Nokogiri::XML(xml_content)
  end
end

# puts File.read("#{(__dir__)}/../data/xml/books.xml")
library = XmlHelper.get_file("books")
puts library.css("author")[9]
