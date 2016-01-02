require_relative "../../connections/fifa_connection.rb"


class Company < FifaConnection
  self.table_name = "company"
  self.primary_key = :id
end

p Company.find(1)
