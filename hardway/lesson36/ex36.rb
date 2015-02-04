#!/bin/ruby

sentence = ["Umm,", "let's", "just", "assume", "I'll", "be", "alright", "without", "doing", "this", "one."]
game_written = false

if(game_written)
  puts "Well then! Hip hip hurray!"
else
  sentence.each do |word|
    print word + " "
  end
end

puts "Have a good day!"
