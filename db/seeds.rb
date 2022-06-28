# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

puts "destroying old records"

Task.destroy_all
List.destroy_all

puts "old records destroyed"
puts "creating lists"

school_list = List.create(title: "School", description: "Homework and test preparations")
home_list = List.create(title: "Home", description: "All my chores")
work_list = List.create(title: "Work", description: "Work related business")

puts "lists created"
puts "creating tasks"

Task.create(
  list_id: school_list.id,
  title: "Math homework",
  description: "Probabilities",
  start_date: DateTime.new(2022, 7, 2, 16, 0),
  end_date: DateTime.new(2022, 7, 2, 17, 0),
  address: "home"
)

Task.create(
  list_id: school_list.id,
  title: "English test",
  description: "Read Romeo and Juliet",
  start_date: DateTime.new(2022, 7, 5, 10, 0),
  end_date: DateTime.new(2022, 7, 5, 18, 0),
  address: "home"
)

Task.create(
  list_id: school_list.id,
  title: "Group work",
  description: "IT dissertation",
  start_date: DateTime.new(2022, 7, 6, 14, 0),
  end_date: DateTime.new(2022, 7, 6, 16, 0),
  address: "Jack's place"
)

Task.create(
  list_id: home_list.id,
  title: "Laundry",
  description: "Too much dirty clothes",
  start_date: DateTime.new(2022, 7, 2, 10, 0),
  end_date: DateTime.new(2022, 7, 2, 10, 30),
  address: "home"
)

Task.create(
  list_id: home_list.id,
  title: "Cleaning",
  description: "House has a lot of dust already",
  start_date: DateTime.new(2022, 7, 3, 11, 0),
  end_date: DateTime.new(2022, 7, 3, 13, 0),
  address: "home"
)

Task.create(
  list_id: work_list.id,
  title: "Meating",
  description: "Boss wants to talk",
  start_date: DateTime.new(2022, 7, 12, 11, 0),
  end_date: DateTime.new(2022, 7, 12, 12, 0),
  address: "office"
)

Task.create(
  list_id: work_list.id,
  title: "Matt's project",
  description: "Deadline next week",
  start_date: DateTime.new(2022, 7, 13, 10, 0),
  end_date: DateTime.new(2022, 7, 13, 16, 0),
  address: "office"
)

puts "tasks created"
puts "all done"
