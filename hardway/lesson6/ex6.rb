#!/bin/ruby
# -*- coding: utf-8 -*-

types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
y = "Those who know #{binary} and those who #{do_not}."
                   #string in string         #string in string
puts x
puts y
               #string in string
puts "I said: #{x}."
puts "I also said: '#{y}'."
                    #string in string
hilarious = false
joke_evaluation = "Isn't that joke so funny‽ #{hilarious}"

puts joke_evaluation

w = "This is the left side of…"
e = "a string with a right side."

puts w + e
