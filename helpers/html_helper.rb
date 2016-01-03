require "nokogiri"

class HtmlHelper
  def self.get_file(filename)
    html_content = File.read("#{(__dir__)}/../data/html/#{filename}.html")
    Nokogiri::HTML(html_content)
  end
end

#  puts File.read("#{(__dir__)}/../data/html/data_island.html")

@datum_island = HtmlHelper.get_file("data_island")
puts@datum_island.css("p")
