require_relative "../connections/dvdrental_connection"

class Category < DvdRentalConnection
  self.table_name = 'category'
  self.primary_key = :category_id
end

# writing a class name and method to get the needed data
# find takes one argument which will be the primary key for the model

p Category.find(3)
