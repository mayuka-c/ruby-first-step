fruits = ["Apple", "Mango", "Banana"]
p fruits

# destructuring
numbers = [[1,2], [3,4]]
first_row, second_row = numbers
p first_row, second_row

# ShortHand %w to create array of strings
fruits = %w[Apple Banana Mango]
p fruits

# fetch method -> used to get the item for given index. if provided out of range, then raises an exception
# Also provides a fallback if the index doesn't exist
puts fruits.fetch(1) # Banana
puts fruits.fetch(100, "Not exist") # Not exist

# fetch multi elements
p fruits[0, 2]
p fruits [1, 3]

# values_at method -> Fetches element at 0 and 2
p fruits.values_at(0, 2) # []"Apple", "Mango"]

# first and last methods
p fruits.first # "Apple" (Returns string)
p fruits.first(2) # ["Apple", "Banana"]

p fruits.last # "Mango"
p fruits.last(2) # ["Banana", "Mango"]

# length, size (alias to length), count methods
p fruits.length # 3
p fruits.size # 3

p fruits.count # 3
p fruits.count("Apple") # 1
p fruits.count("Papaya") # 0

# empty and nil predicate methpds
p [].empty? # true
p nil.nil? # true

# Adding elements (push, shovel operator, insert, unshift)
fruits.push("Papaya")
p fruits # ["Apple", "Banana", "Mango", "Papaya"]

fruits << "Watermelon"
p fruits # ["Apple", "Banana", "Mango", "Papaya", "Watermelon"]

fruits.insert(1, "Berry")
p fruits # ["Apple", "Berry", "Banana", "Mango", "Papaya", "Watermelon"]

# Delete elements (pop, shift)
fruits.pop()
p fruits # ["Apple", "Berry", "Banana", "Mango", "Papaya"]

fruits.pop(2)
p fruits # ["Apple", "Berry", "Banana"]

fruits.shift(2)
p fruits # ["Banana"]

fruits.unshift("Apple", "Mango")
p fruits # ["Apple", "Mango", "Banana"]
puts

# reverse method
p fruits.reverse # ["Banana", "Mango", "Apple"]

# sort method
p fruits.sort # ["Apple", "Banana", "Mango"]
p fruits.sort.reverse # ["Mango", "Banana", "Apple"]
puts

# uniq method -> returns unique elements
p [1, 2, 3, 2, 5].uniq # [1, 2, 3, 5]
puts

# compact method -> removes nil values in array
p [1, 2, 3, nil, 5, nil, 10].compact # [1, 2, 3, 5, 10]
puts

# inject/ reduce method -> derive a single value by combining all array elements
p [1, 2, 3, 2, 5].reduce(0) { |sum, num| sum + num } # 13