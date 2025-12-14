a = 10
b = 3

puts a + b    # 13
puts a - b    # 7
puts a * b    # 30
puts a / b    # 3
puts a % b    # 1
puts a ** b   # 1000

puts "\n"

# Spaceship operator (<=>)
puts "Spaceship Operator: "
puts 5 <=> 10   # -1
puts 10 <=> 10  # 0
puts 10 <=> 5   # 1

puts "\n"

# Array Operators
puts "Array Operator: "
a = [1, 2]
b = [3, 4]

puts (a + b).inspect   # [1, 2, 3, 4]
puts (a - [2]).inspect # [1]
puts (a * 2).inspect   # [1,2,1,2]

puts "\n"

# Membership Operators
nums = [1, 2, 3]

puts nums.include?(2)   # true
puts (1..5).include?(6) # false

puts "\n"

# Safe Navigation operator (&.) -> Nil Check
user = nil

puts user&.name   # nil (no crash)

# Double Pipe equals (||=) -> Assign if left hand side is falsy (false || nil)
name ||= "Guest"
puts name # Guest
