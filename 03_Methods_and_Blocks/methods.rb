def introduce_myself
  puts "This is Mayuka"
end

introduce_myself

# With params

def hello(name)
  puts "Hi #{name}"
end

hello "Mayuka"
# hello("Mayuka")

# Return

def add(num1, num2)
  num1 + num2 # or return num1 + num2
end

puts add(1, 2)

puts

# Unlimited method arguments
def adder(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

p adder(1, 2) # 3
p adder(1, 3, 5) # 9