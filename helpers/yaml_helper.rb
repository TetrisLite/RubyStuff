require "yaml"

module YamlHelper
  def get_file(filename)
    YAML.load_file("#{__dir__}/../config/#{filename.to_s}.yml")
  end
end

# puts YamlHelper.get_file(:database)
