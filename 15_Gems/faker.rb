# RubyGems is the official package manager for the Ruby programming language
# Run `bundle install` to install required gems

require "faker"

puts Faker.class # Module
puts Faker::Name.class # Class
puts
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name
puts
p Faker.constants.sort
puts
p Faker::Game.title