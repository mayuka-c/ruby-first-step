# private, protected methods
# Add validation to setter method

class SmartPhone
  attr_reader :username, :production_number, :password
  # attr_writer :password

  def initialize(username, password, quality)
    @username = username
    @password = password
    @production_number = generate_production_number
    @quality = quality
  end

  def compare_SmartPhone_with(smartPhone)
    self.quality > smartPhone.quality ? "Your phone is better" : "Your phone is worst"
  end

  def password=(password)    
    @password = password if valid_password?(password)
  end

  private # methods below this will become private

  def generate_production_number
    random_number = rand(100_000..999_999)
    random_number
  end

  def valid_password?(password)
    password.length >= 6
  end

  protected # methods below this will be become protected (It can be accessed by internal methods or objects of same class)

  def quality
    @quality
  end

end

phone1 = SmartPhone.new("ABC", "secret", 50)
puts phone1.username
puts phone1.production_number
phone2 = SmartPhone.new("XYZ", "secret", 30)
puts phone1.compare_SmartPhone_with(phone2) # Your phone is better
puts phone1.password # secret
puts

# Class method -> method invoked on class rather than an instance
# class method can be called with class name even though the instance doesnt exist
# Class variable -> data lives on a class rather than an instance
class Vehicle
  @@count = 0 # class variable

  def self.hello
    puts "This is a class method"
  end

  # Alternate syntax to create a class block
  class << self
    def count
      @@count
    end

    def car
      puts "This is car method"
    end

    def truck
      puts "This is truck method"
    end
  end

  def initialize
    @@count += 1
  end

  # Instance method can also return class variable
  def count
    @@count
  end

end

Vehicle.hello # This is a class method
Vehicle.car # This is car method
Vehicle.truck # This is truck method
p Vehicle.count # 0
car = Vehicle.new
Vehicle.new
p Vehicle.count # 2
p car.count # 2

puts

# Example
class SushiLunchOrder
    @@total_pieces = 0
    attr_reader :salmon, :tuna, :yellowtail
    
    def self.salmon_special
        self.new(6, 3, 3) 
    end
    
    def self.family_combo
        self.new(12, 12, 12) 
    end
    
    def self.total_pieces
        @@total_pieces
    end
    
    def initialize(salmon, tuna, yellowtail)
        @salmon = salmon
        @tuna = tuna
        @yellowtail = yellowtail
        @@total_pieces += salmon + tuna + yellowtail
    end
end

order1 = SushiLunchOrder.salmon_special
p order1.salmon     # 6
p order1.tuna       # 3
p order1.yellowtail # 3
p SushiLunchOrder.total_pieces # 12

order2 = SushiLunchOrder.family_combo
p order2.salmon     # 12
p order2.tuna       # 12
p order2.yellowtail # 12
p SushiLunchOrder.total_pieces # 48

puts

# Monkey patching - add functionality to an existing class

# Extending functionality of string class (Monkey patching)
class String
  def count_vowels
    self.downcase.count("aeiou")
  end
end

p "hello".class # String
p "hello".count_vowels # 2

class Array
  def sorted?
    self == self.sort
  end
end

p [1, 2, 3].sorted? # true
p [2, 1, 3].sorted? # false
