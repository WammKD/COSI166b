#!/bin/ruby

puts "Not false is #{!false}."
puts "Not true is #{!true}.\n"

puts "True or false is #{true||false}."
puts "True or true is #{true||true}."
puts "False or true is #{false||true}."
puts "False or false is #{false||false}.\n"

puts "True and false is #{true&&false}."
puts "True and true is #{true&&true}."
puts "False and true is #{false&&true}."
puts "False and false is #{false&&false}.\n"

puts "Does 1 not equal 0: #{1 != 0}."
puts "Does 1 not equal 1: #{1 != 1}."
puts "Does 0 not equal 1: #{0 != 1}."
puts "Does 0 not equal 0: #{0 != 0}.\n"

puts "Does 1 equal 0: #{1 == 0}."
puts "Does 1 equal 1: #{1 == 1}."
puts "Does 0 equal 1: #{0 == 1}."
puts "Does 0 equal 0: #{0 == 0}."
