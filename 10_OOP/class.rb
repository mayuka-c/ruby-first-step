class Animal
end

dog = Animal.new
cat = Animal.new
p dog.class # Animal
p cat.class # Animal

# Instance variable and Instance method
# Instance variable is declared by using @
class Animal
  def initialize # like a constructor
    @hand = 2
    @leg = 2
    @color = ["Gold", "Black"]
  end

  def information
    "Hand -> #{@hand}, Leg -> #{@leg}, Color -> #{@color}"
  end

  def to_s
    "Dog!"
  end
end

dog = Animal.new
p dog.information # "Hand -> 2, Leg -> 2, Color -> [\"Gold\", \"Black\"]"
puts dog # Dog!

puts

# self keyword - returns the entity in which the keyword is used.
# We can use this inside class to invoke other instance methods
# getter method -> method that retrieves the value of instance variable (Good practice to use the same name as instance variable name)
# setter method -> method that set the value of instance variable (Good practice to use the same name as instance variable name with (=))
class Musical
  puts "Inside Musical: #{self}"

  def initialize
    @type = "Guitar"
    @strings = 6
  end

  def type
    @type
  end

  def strings
    @strings
  end

  def strings=(new_strings)
    @strings = new_strings
  end

  def details
    self.nil_details
    self.class_details
  end

  def nil_details
    puts "Inside details instance method: #{self}" if !self.nil?
  end

  def class_details
    puts "It is made from class: #{self.class}"
  end

  def to_s
    "Musical object"
  end
end

music = Musical.new
music.details # Inside details instance method: Musical object
puts music.class # Musical
puts music.nil? # false
puts
puts music.type # Guitar
puts
music.strings=(8) # Also supports music.strings = 8
puts music.strings # 8
puts


# Alternative for getter and setter (Used in prod)
# attr_reader -> Takes symbols of instance variable names that needs to be exposed to read
# attr_writter -> Takes symbols of instance variable names that needs to be exposed to set
# attr_accessor -> Takes symbols of instance variable names that needs to be exposed to both read and set
class Musical
  # attr_reader :type, :strings
  # attr_writer :type

  attr_reader :strings
  attr_accessor :type

  def initialize(type, strings)
    @type = type
    @strings = strings
  end
end

music = Musical.new("Guitar", 6)
puts music.type # Guitar
puts music.strings # 6
music.strings = 8
puts music.strings # 8