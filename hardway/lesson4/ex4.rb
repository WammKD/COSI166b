#!/bin/ruby

# 100 cars
cars = 100
# space for 4.0 people
space_in_a_car = 4.0
# 30 available drivers
drivers = 30
# 90 people who need rides
passengers = 90
# cars not driven is the total amount of cars minus the number of people
# who can drive said cars
cars_not_driven = cars - drivers
# cars driven are as many as can have a driver
cars_driven = drivers
# you can carpool as many as all available cars can hold people
carpool_capacity = cars_driven * space_in_a_car
# basic math
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."


# The error was because ze must've not defined carpool_capacity yet and
# then there was an attempt to call it

# The 4.0 wasn't necessary; it just results in an integer, otherwise
