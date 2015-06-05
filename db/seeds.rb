require 'csv'
require '../config/application.rb'
require_relative '../app/models/student.rb'

students = []
CSV.foreach("dragonflys.csv", :headers => true, :header_converters => :symbol) do |row|
    students << row
end

students.each do |student|
  Student.create(name: student[:name], twitter_handle: student[:twitter_handle])
end
