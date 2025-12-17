[1, 2, 3].each { |val| puts val}
[1, 2, 3].each do |val|
  puts val
end

puts

# yield -> used inside method to execute the block
def pass_control
  puts "BEGIN"
  yield # Give control to block to execute
  puts "END"
end

pass_control { puts "Block executing" }
puts

# Return values -> Block implicitly return their last evaluation back to the method
def pass_control
  puts "BEGIN"
  out = yield # Give control to block to execute
  puts "Got from Block: #{out}" # Got from Block: Hello
  puts "END"
end

pass_control { "Hello" }
puts

# block_given? method determines whether a block was provided to method invocation
def pass_control_on_condition
  puts "Inside method"
  if block_given? # if block is present execute
    yield
  end
  puts "Back Inside method"
  puts
end

pass_control_on_condition
pass_control_on_condition { puts "Block statement" }

# Block Parameters and Arguments
def speak_the_truth(name)
  yield(name)
end

speak_the_truth("Mayuka") { |name| puts "Name: #{name}" } # Name: Mayuka
puts

# Implement custom each method
def custom_each(arr)
  i = 0
  while i < arr.length
    yield(arr[i])
    i += 1
  end
end

custom_each([1, 2, 3]) { |item| puts "Item: #{item}" }
puts

# Implement custom map method
def custom_map(arr)
  i = 0
  new_arr = []
  while i < arr.length
    new_arr[i] = yield(arr[i])
    i += 1
  end
  new_arr
end

p custom_map([1, 2, 3]) { |item| item * 2 } # [2, 4, 6]