require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Peter", last_name: "Nolan", hourly_rate: 8000)
@store2.employees.create(first_name: "Bob", last_name: "Barker", hourly_rate: 500)
@store2.employees.create(first_name: "Real", last_name: "Dude", hourly_rate: 10)