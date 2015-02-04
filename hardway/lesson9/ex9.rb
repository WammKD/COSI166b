#!/bin/ruby
# -*- coding: utf-8 -*-

# Here's some strange stuff, remember type it exactly

days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

# Wouldn't single quotes work just as well? Or is it stylistic
# I didn't get an error with the spaces…
puts """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
"""
