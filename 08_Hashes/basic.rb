profile = {
  "name" => "Mayuka",
  "age" => 25
}

p profile # {"name" => "Mayuka", "age" => 25}
p profile.class # Hash
p profile.length # 2
p profile["age"] # 25
puts

# Symbol -> a lightweight, immutable Ruby object that is used as an identifier
# Mostly used as Hash Key
puts :action # action
puts :action.class # Symbol

a = :hello
b = :hello
puts a.object_id # both will have same obj id
puts b.object_id
puts

profile = {
  :name => "Mayuka",
  :age => 25,
}

p profile

# or else we can use the below short hand where the key is still symbol
profile = {
  name: "Mayuka",
  age: 25
}

p profile[:name] # "Mayuka"

# Add a new kv to hash
profile[:hobbies] = ["Gaming", "Cooking"]
p profile # {name: "Mayuka", age: 25, hobbies: ["Gaming", "Cooking"]}
puts

# include?, key?, value?
p profile.include?(:name) # true
p profile.key?(:name) # true
p profile.value?("Mayuka") # true