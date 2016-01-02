require 'pg'
require "active_record"
require_relative "../helpers/yaml_helper"

class DvdRentalConnection < ActiveRecord::Base
  extend YamlHelper

  self.abstract_class = true
  self.establish_connection(get_file(:database)["dvdrental"])
end


# puts DvdRentalConnection.connection.active?
# p DvdRentalConnection.connection.tables

# self.abstract = true
