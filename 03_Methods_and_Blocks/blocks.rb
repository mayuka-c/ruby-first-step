# Inline block
5.times { puts "Executing block statement" }

puts

# do block
3.times do
  puts "Executing do block statement"
  puts "Multiple lines"
  puts
end

# Return value of times is the Integer itself (3)

# Block variables

3.times { |count| puts "Hello #{count}" }
puts

# Upto and downto methods (Both argument and blocks)

3.upto(6) { |current| puts "The current loop is on: #{current}" }
puts
10.downto(8) { |current| puts "The current loop is on: #{current}" }
puts

# steps
2.step(10, 2) { |num| puts num }