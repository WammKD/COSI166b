#!/bin/ruby

# stores given arg
filename = ARGV.first

# stores opened file
txt = open(filename)

# prints given file name and file contents
puts "Here's your file #{filename}:"
print txt.read
txt.close

# gets file name again
print "Type the filename again: "
file_again = $stdin.gets.chomp

# stores opened file
txt_again = open(file_again)

# prints file again
print txt_again.read
txt_again.close
