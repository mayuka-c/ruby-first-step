# split method
text = "Hello World"
p text.split # ["Hello", "World"]

# chars method
p text.chars # ["H", "e", "l", "l", "o", " ", "W", "o", "r", "l", "d"]

# join method
text_arr = text.split
p text_arr.join(" ") # "Hello World"