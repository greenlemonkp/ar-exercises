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
puts "Enter the name of the store"
store_name = gets.chomp
store_new = Store.create(name: store_name)

if store_new.invalid?
  store_new.errors.full_messages.each do |error|
    puts error
  end
  puts store_new.valid?
end

