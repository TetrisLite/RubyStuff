require "active_record"
require "pg"

#connect to a database

ActiveRecord::Base.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "postgres",
  :password => "",
  :database => "FIFA"
)
puts ActiveRecord::Base.connection.active?
p ActiveRecord::Base.connection.execute("SELECT * FROM customer")[2]
p ActiveRecord::Base.connection.execute("SELECT * FROM customer")[2]['first_name']
