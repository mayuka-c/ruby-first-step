# No type declarations is required as Ruby figures it out dynamically

# Declarations
name = "Mayuka"
age = 25
height = 5.6
is_engineer = true

# Printing variables
puts name
puts age
puts height
puts is_engineer

puts "\n"

# Printing the type of each variable
puts "Types: \n"
puts "-----" 
puts name.class
puts age.class

puts "\n"

# String Interpolation
age = 25
puts "Age is #{age}"

puts "\n"

# Supported Data types
# 1) Integer
a = 10
puts a.class # Integer
puts "\n"

# 2) Float
a = 10.3
puts a.class # Float
puts "\n"


# 3) Boolean (TrueClass/ FalseClass)
a = true
puts a.class # TrueClass
b = false
puts b.class # FalseClass
puts "\n"

# 4) String
name = "Ruby"
puts name.class # String
puts "\n"

# 5) Nil
val = nil
puts val.class # NilClass
puts "\n"

# 6) Symbols -> Symbols are light weighted strings. They are preceded by a colon (:). They take much less memory than strings
status = :active
puts status # active
puts status.class # Symbol
puts "\n"

# 7) Arrays
numbers = [1, 2, 3, 4]
mixed = ["apple", 10, true]

puts numbers[0]     # 1
puts mixed[1]       # 10
puts numbers.class  # Array

puts "\n"

# 8) Hashes -> (KV pairs)
person = {
  :name => "Mayuka",
  :age => 25,
  :city => "Bangalore"
}

puts person[:name]
puts person[:age]
puts person.class # Hash

puts "\n"

# 9) Range -> Sequence of values
numbRange = 1..5
puts numbRange.to_a
puts numbRange.class # Range

puts "\n"

# 10) Time
now = Time.now
puts now
puts now.class   # Time

puts "\n"

# 11) Class
class Person
end

puts Person.class # Class

puts "\n"


# 12) Object -> Parent of all classes
puts Object.class # Class


# Important Concepts
# -------
# 1) Everything is an object
  # puts 5.class
  # puts "hi".class
  # puts true.class

# 2) Type Conversion
  # "10".to_i     # 10
  # "3.14".to_f   # 3.14
  # 10.to_s       # "10"

# 3) Check Data Type
  #  value = 100
  #  puts value.is_a(Integer) # true
  #  puts value.is_a(String) $ false

# 4) Truthy & Falsy
  # Only these are false: false, nil
  # Rest all are truthy
