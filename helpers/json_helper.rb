require "json"
require "pp"

class JsonHelper
  def self.get_file(filename)
    json_contents = File.read("#{(__dir__)}/../data/json/#{filename}.json")
    JSON.parse(json_contents)
  end
end

# pp JsonHelper.get_file("colour")
# puts File.read("#{(__dir__)}/../data/json/colour.json")
puts JsonHelper.get_file("colour")[0].select {|key| key.to_s.match(/^_id$/)}
puts JsonHelper.get_file("colour")[0].select{|key| key.to_s.match(/^email$/)}
