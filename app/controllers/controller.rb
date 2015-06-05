
# input: student objects, number of groups desired
# output: groups objects populated with student objects

# Create a student class which will be responsible for the generation of student objects.
# create a group class to be populated with students

# Student_objects
#   Create new groups with each consecutive student until number of groups desired is reached
#     take a student and if number of groups  is less than number desired, move student to new group

#   once amount of groups is reached
#     students will go to where they have the least amount of connections

#     student objects will keep track (array? Hash if we want to track number of times grouped with) of each other student they have grouped with.

#     If control_student has never been grouped with test_student student before, than test_student will not be present in the grouped_with hash. When control_student groups with test_student, then test_student gets added to the grouped_with hash.

# Group_objects
#   Every Group_objects will contain an array of the Student_objects currently in the group
#   Group_object will tell each student_objects to add the other_student objects to their hash.

module View
  def self.welcome
    puts "Hello, how many students do you have and how many groups do you want?"
    students_num = gets.chomp.to_i
    desired_groups = gets.chomp.to_i
  end
end

class Student
  attr_reader :name
  attr_accessor :connections

  def initialize(options = {})
    @name = options.fetch(:name, "")
    @connections = options.fetch(:connections, {})
    @group_connection_counter = {laseraptors: 1}
  end

  def choose_group
    if num_groups < desired_groups
      create_group
      join_group(group)
    else
      count_connections
      # join_group(group)
    end
  end

  def create_group
    Group.new
    # join_group(group)
  end

  # def join_group(group)
  #   if
  #     group.add_member(self)
  # end

# group_arreay = [bears, lightingbears]
# @connections = []

  def count_connections(group_array)
    group_array.each do |group|
      group.each do |member|
        self.connections.each do |previous_connections|
          if member == previous_connections
            @group_connection_counter[group] += 1
          end
        end
      end
    end
  end
  def inspect
    "#{@name}"
  end
end


class Group
  attr_accessor :members, :name

  def initialize(options = {})
    @name = options.fetch(:name, "")
    @members = options.fetch(:members, [])
  end

  def add_member(student)
    @members << student
  end
end

# -------------------------------------------------------------
test_connections = {ian: 2, maximus: 3, larry: 8, doug: 1}
andy = Student.new(name: "Andy", connections: test_connections)
p andy

test_connections2 = {maxwell: 2, magnus: 3, maximillian: 8, maximus: 1}
jimmy = Student.new(name: "Jimmy", connections: test_connections2)
p jimmy
fred = Student.new(name: "Fred", connections: test_connections2.merge(test_connections))
p fred
# -------------------------------------------------------------

puts

# -------------------------------------------------------------
# test_group = Group.new
group1 = Group.new(name: "LaserRaptors", members: [andy])
p group1.name
puts group1.members
group2 = Group.new(name: "ChuckNorris", members: [fred])
group2.add_member(jimmy)
puts "look here!!!!!!!!!!"
p group2.members
# -------------------------------------------------------------

group_array = [group1, group2]
puts group_array
# Chad.connections = {ian: 2, andrew: 3, larry: 8, doug: 1}

# laseraptors = [ian, andrew, ellis, james, michael]    => 2 connections
# chocolate_bunnies = [bill, fred, doug]

# num_of_connection += 1





