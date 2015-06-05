require_relative '../../config/application'
require_relative '../models/student'
#fake controller

student_array = Student.all
groups = []

# student_array.each do |student|
#  all_pairs = Pair.where(student_id: student.id)
#   groups.each do |sub_group|
#     if sub_group.include?()
#   end




# student_array.each do |student|
#    all_pairs = Pair.where(student_id: student.id)
#    if groups.size < 6
#       groups < [student]
#     else
#       groups.each_with_index do |group|
#         groups
pair_assignment = [1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4,1]
#p student_array
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



# Andy = Student.new

# Andy.grouped_with[ian: 3]
