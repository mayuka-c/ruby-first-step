# Double quotes considers escape idenitifiers, string interpolation where as single quote does not
puts "HelloWorls\nHelloWorld"
puts 'HelloWorls\nHelloWorld'

puts

# Multi line strings
my_bio = <<MLS
  I'm Mayuka
  My Age is 25
  I like Apple
MLS

puts my_bio

puts

# String manip
first_name = "Harry"
last_name = "Potter"

puts first_name.concat(last_name) # HarryPotter
puts first_name.prepend(last_name) # PotterHarryPotter

# Both of them mutates the original string
puts first_name # PotterHarryPotter
puts

# Shovel Operator (<<)
wrestler = "Stone Cold "
wrestler << "Steve Austin"
puts wrestler

puts

# Index Positions
text = "hello World! Jeez"
puts text.slice(0) # h
puts text[0] # h
p text[400] # nil (Out of bound)
p text[3, 2] # lo

puts

# insert method (Adds an element at a given pos)
text = "Apple isgood"

text.insert(8, " ")
puts text
puts

# Bang methods (always ends with !) -> it mutates the original string
# Similarly there are bang methods for upcase, downcase, swapcase, reverse etc.
word = "apple"
word.capitalize!
puts word