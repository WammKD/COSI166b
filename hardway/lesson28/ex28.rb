#!/bin/ruby

puts "true && true: #{true && true}."
puts "false && true: #{false && true}."
puts "1 == 1 && 2 == 1: #{1 == 1 && 2 == 1}."
puts "\"test\" == \"test\": #{"test" == "test"}."
puts "1 == 1 || 2 != 1: #{1 == 1 || 2 != 1}."
puts "true && 1 == 1: #{true && 1 == 1}."
puts "false && 0 != 0: #{false && 0 != 0}."
puts "true || 1 == 1: #{true || 1 == 1}."
puts "\"test\" == \"testing\": #{"test" == "testing"}."
puts "1 != 0 && 2 == 1: #{1 != 0 && 2 == 1}."
puts "\"test\" != \"testing\": #{"test" != "testing"}."
puts "\"test\" == 1: #{"test" == 1}."
puts "!(true && false): #{!(true && false)}."
puts "!(1 == 1 && 0 != 1): #{!(1 == 1 && 0 != 1)}."
puts "!(10 == 1 || 1000 == 1000): #{!(10 == 1 || 1000 == 1000)}."
puts "!(1 != 10 || 3 == 4): #{!(1 != 10 || 3 == 4)}."
puts "!(\"testing\" == \"testing\" && \"Zed\" == \"Cool Guy\"): #{!("testing" == "testing" && "Zed" == "Cool Guy")}."
puts "1 == 1 && (!(\"testing\" == 1 || 1 == 0)): #{1 == 1 && (!("testing" == 1 || 1 == 0))}."
puts "\"chunky\" == \"bacon\" && (!(3 == 4 || 3 == 3)): #{"chunky" == "bacon" && (!(3 == 4 || 3 == 3))}."
puts "3 == 3 && (!(\"testing\" == \"testing\" || \"Ruby\" == \"Fun\")): #{3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))}."
