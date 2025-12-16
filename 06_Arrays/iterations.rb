fruits = ["Apple", "Mango", "Banana"]


# each loop
fruits.each { |fruit| puts "I like to eat #{fruit} "}
puts
[1, 2, 3, 4, 5].each do |num|
  puts num * 2
end

puts

# for loop (less used)
for fruit in fruits
  puts fruit
end

puts fruit # Banana (it preserves the last value of fruits for rest of code)

puts

# each_with_index method
fruits.each_with_index { |fruit, index| puts "Found #{fruit} at index: #{index}" }

puts

# map and collect method (alias for one other)
doubles = [1, 2, 3].map { |num| num * 2 }
p doubles # [2, 4, 6]

# select method
evens = [1, 2, 3, 4, 5, 6].select { |num| num.even? }
p evens # [2, 4, 6]

# reject method
odds = [1, 2, 3, 4, 5, 6].reject { |num| num.even? }
p odds # [1, 3, 5]

# partition method -> split an array into two arrays based on matching/ not matching a condition
arr = ["Apple(F)", "Mango(F)", "Carrot(V)", "Raddish(V)", "Banana(F)"]
fruits, veggies = arr.partition { |item| item.include?("(F)") }
p fruits, veggies # ["Apple(F)", "Mango(F)", "Banana(F)"], ["Carrot(V)", "Raddish(V)"]

# any? (check if any array element satisfies condition ) and all? (check if all array elements. satisfies) predicate methods
p arr.any? { |item| item.include?("(F)") } # true
p fruits.all? { |item| item.include?("(F)") } # true

puts

# find/ detect methods -> find first array method that matches the condition
p fruits.find { |fruit| fruit.include?("(F)") } # "Apple(F)"

# index/ find_index methods -> return the index position of first occurrence of element
p fruits.index { |fruit| fruit.include?("(F)") } # 0

# max and min methods
p fruits.max # Mango(F)
p fruits.min # Apple(F)
