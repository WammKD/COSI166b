#!/bin/ruby
# -*- coding: utf-8 -*-

i = 0
numbers = []

def nwhile(n, i, numbers)
  while(i < n)
    # Zir's insistance upon ignoring the existence of commas for basic grammar is grating…
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
end

nwhile(6, i, numbers)

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each { |num| puts num }
numbers.each do |num|
  puts num
end
for num in numbers
  puts num
end
