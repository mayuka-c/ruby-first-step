# while loop
puts "While Loop: "
i = 1
while i <= 5
  puts i
  i += 1
end

puts "\n"

# until loop
puts "Until Loop: "
i = 1

until i > 5
  puts i
  i += 1
end

puts "\n"

# for loop
puts "Until Loop: "

for i in 1..5
  puts i
end

puts "\n"

# .each loop
puts ".each Loop: "

fruits = ["apple", "banana", "mango"]

# inline
fruits.each { |fruit| puts fruit }

puts "\n"

# block
fruits.each do |fruit|
  puts fruit
end

puts "\n"

person = { :name => "Mayuka", :age => 25 }

person.each do |key, value|
  puts "#{key} -> #{value}"
end

puts "\n"

# times loop
puts "times loop: "

5.times do |i|
  puts i
end

puts "\n"

# upto and downto
puts "upto: "
1.upto(5) { |i| puts i }

puts "\n"

puts "downto: "
5.downto(1) { |i| puts i }

puts "\n"

# step loop
puts "step: "

0.step(10, 2) do |i|
  puts i
end

puts "\n"

# infinite loop
loop do
  puts "Running..."
  break
end

puts "\n"

# Loop control keywords
puts "break: "
(1..10).each do |i|
  break if i == 5
  puts i
end

puts "\n"
puts "next (continue): "
(1..10).each do |i|
  next if i.even?
  puts i
end

puts "\n"

puts "redo: "
i = 0
while i < 3
  i += 1
  redo if i == 2
  puts i
end

puts "\n"

# Loop with Enumerable Methods
puts "Loop with Enumerable Methods: "

puts "map: "
nums = [1, 2, 3]
double = nums.map { |n| n * n }
puts double.inspect

puts "\n"

puts "select: "
nums = [1, 2, 3, 4]
evens = nums.select(&:even?)
puts evens.inspect

puts "\n"

puts "reject: "
nums = [1, 2, 3, 4]
odds = nums.reject(&:even?)
puts odds.inspect

puts "\n"

puts "each_with_index: "
fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end