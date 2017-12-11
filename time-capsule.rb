# require 'pry'

puts "Hello! Welcome to the Time Capsule Maker!\nWhat is your name?"

name = gets.chomp

time_capsule = []


while true
  puts "What do you want to add to the time capsule #{name}?"
  puts "Type 'FINISHED' (all caps) to stop adding items."
  item = gets.chomp


  if item == "FINISHED"
    break #stops a loop
  else
    #ask how many they want
    # store that into a variable number_of_items
    # item += " #{number_of_items}"
    puts "How many do you want for the item?"
    number_of_items = gets.chomp
    item_array = [item, number_of_items]

    time_capsule << item_array

  end
end

if time_capsule == []
  puts "Your Time Capsule is empty!"
else
  puts "#{name}, thanks for trying our Time Capsule maker. Here is a list of the items in your Time Capsule!:"

  time_capsule.each do |item_array|
    puts "* #{item_array[0]} (#{item_array[1]})"
  end
  # binding.pry
end

# puts "The first item is #{time_capsule.first}"
