profile = {
  name: "Mayuka",
  age: 25
}

# each method -> Iterates over each kv pairs
profile.each { |k, v| puts "#{k} -> #{v}" }
puts

# each_key -> Iterates over each key
profile.each_key { |val| puts "Val: #{val}" }
puts

# each_value -> Iterates over each value
profile.each_value { |val| puts "Val: #{val}" }
puts

# keys -> Returns an array of keys
p profile.keys
puts

# values -> Returns an array of values
p profile.values
puts

# select and reject methods
p profile.select { |k, v| k == :name } # {name: "Mayuka"}
p profile.reject { |k, v| k == :name } # {age: 25}
puts

# Conversion to array and vice-versa
p profile.to_a # [[:name, "Mayuka"], [:age, 25]]
p [[:a, 1], [:b, 2]].to_h # {a: 1, b: 2}
puts

# delete method
profile.delete(:age)
p profile
puts

# merge method
p ({a: 1}).merge({b: 2}) # {a: 1, b: 2}
puts

# Hash class
numbers = Hash.new(0)
numbers[:pi] = 3.14
numbers[:e] = 2.71

p numbers # {pi: 3.14, e: 2.71}
p numbers[:goog] # 0