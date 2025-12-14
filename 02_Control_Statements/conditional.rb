# if...else
age = 15

if age >= 18
  puts "Adult"
else
  puts "Minor"
end

# if...elsif...else
marks = 72

if marks >= 90
  puts "Grade A"
elsif marks >= 75
  puts "Grade B"
elsif marks >= 50
  puts "Grade C"
else
  puts "Fail"
end

# Shorthand if
puts "Eligible to vote" if age >= 18

# unless statement
logged_in = false

unless logged_in
  puts "Please login"
else
  puts "Welcome"
end

# case statement
day = "Tue"

case day
when "Mon"
  puts "Start of the week"
when "Fri"
  puts "Weekend coming!"
when "Sat", "Sun"
  puts "Weekend!"
else
  puts "Week Day. Go to Office!"
end
