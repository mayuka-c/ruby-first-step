# Arrays are shadow cloned with equals operator (Same with strings)

# dup/clone method
a = [1, 2, 3]
b = a.dup
c = a.clone

puts a.object_id
puts b.object_id
puts c.object_id

# freeze method -> make object immutable
name = "Mayuka".freeze
hobbies = ["Gaming", "Cooking"].freeze

p name, hobbies

# name.capitalize! -> Not possible to modify original object

puts

# Passing objects to methods is by reference (i.e it does not copy)
def append(nums)
  nums << 5
end

values = [1, 2, 3, 4]
append(values)
p values
