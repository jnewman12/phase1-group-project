require 'csv'

students = []

CSV.foreach('dragonflys.csv', :headers => true, :header_converters => :symbol) do |row|
    students << row
end


