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