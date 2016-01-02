require "active_record"
require_relative "../helpers/yaml_helper"

class FifaConnection < ActiveRecord::Base
  extend YamlHelper

  self.abstract_class = true
  self.establish_connection(get_file(:database)["FIFA"])
end

# The name for the get_file symbol
# should match the name in the yaml file

# To prove that a connection exists put the following line

#puts FifaConnection.connection.active?

# To check the database for tables do the following line

#p FifaConnection.connection.tables
