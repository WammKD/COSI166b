#!/bin/ruby
# -*- coding: utf-8 -*-

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

# Yeah, still not needing three…
fat_cat = "
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

# I'm lazy
puts "\\\'\"\a\b\f\n\r\t\v\ooo"
# \uxxxx and \xhh drew errors:
# invalid Unicode escape and invalid hex escape, respectively
