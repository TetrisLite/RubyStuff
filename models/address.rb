require_relative "../connections/dvdrental_connection.rb"

class Address < DvdRentalConnection
  self.table_name = 'address'
  self.primary_key = :address_id
end

p Address.find(5)
