require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "K", last_name: "V", hourly_rate: 100)
@store1.employees.create(first_name: "K", hourly_rate: 60)
@store1.employees.create(last_name: "V", hourly_rate: 60)

Store.create(name: "BillyBob", annual_revenue: 100, mens_apparel: true, womens_apparel: true)

@userstore = Store.create(name: gets.chomp, annual_revenue: 100, mens_apparel: false, womens_apparel: false)
if @userstore.errors.any?
  @userstore.errors.full_messages.each do |message|
    puts message
  end
end