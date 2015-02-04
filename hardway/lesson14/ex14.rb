#!/bin/ruby

user_name = ARGV.first
space = ARGV.second
# I actually like the prompt so I'm not gonna change it
prompt = '> '

puts "Hi #{user_name}. You gave me #{space}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
print prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? "
print prompt
computer = $stdin.gets.chomp

#Yeah, still not getting errors over single quotes
puts "
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"
