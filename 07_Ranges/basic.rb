# range -> sequence of number of letters in order
inclusive_nums = 1..4 # 4 is included
exclusive_nums = 1..4 # 4 is excluded

puts inclusive_nums.class # Range

puts inclusive_nums.first # 1
puts inclusive_nums.last # 4
puts exclusive_nums.last # 4

p inclusive_nums.first(3) # [1, 2, 3]

# Alphabetic ranges

alpha = "a".."e"
p alpha.first(2) # ["a", "b"]
p alpha.last(2) # ["d", "e"]

# include and member method (alias to include)
p alpha.include?("c") # true
p alpha.member?("c") # true
p alpha === "c" # true

# extract multiple characters from string and array
text = "Hello World, How r you!"

puts text[6..10] #World

text[6..10] = "Earth"
puts text # Hello Earth, How r you!

# convert range to array
p (1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p ("a".."d").to_a # ["a", "b", "c", "d"]