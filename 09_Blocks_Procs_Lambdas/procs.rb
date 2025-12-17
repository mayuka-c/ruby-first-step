# Proc -> An object representation of block. It does the reusability of block (creating reusable blocks)

to_cubes = Proc.new { |num| num ** 3 }
p to_cubes.class # Proc

to_squares = Proc.new do |num|
  num ** 2
end

to_squares = proc { |num| num ** 2 }
p to_squares.class # Proc

nums = [1, 2, 3]
p nums.map(&to_cubes) # [1, 8, 27]
p nums.map(&to_squares) # [1, 4, 9]

# More Proc Examples
us_dollars = [10, 20, 30]

to_rupees = proc { |curr| curr * 90 }
to_euros = proc { |curr| curr * 0.93 }
p us_dollars.map(&to_rupees) # [900, 1800, 2700]
p us_dollars.map(&to_euros) # [9.3, 18.6, 27.900000000000002]

puts

is_senior = Proc.new { |age| age > 55 }

ages = [10, 60, 33, 12]
p ages.select(&is_senior) # [60]
p ages.reject(&is_senior) # [10, 33, 12]
puts

# Method with Proc Parameters
def talk_about(name, &my_proc)
  puts "About #{name}"
  my_proc.call(name)
end

def talk_about_two(name)
  puts "About #{name}"
  yield(name)
end

good_thing = proc { |name| puts "#{name} is good person" }
bad_thing = proc { |name| puts "#{name} is bad person!" }

talk_about_two("Mayuka", &good_thing)
puts
talk_about("ABC", &bad_thing)
puts
talk_about("XYZ") { |name| puts "#{name} is good person" }