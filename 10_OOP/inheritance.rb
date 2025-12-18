# Ruby supports only single inheritance
# A class can only inherit from a single class

# superclass class method - return the superclass that class inherits from
# ancestors class method - return an array of all superclasses (plus extra things)
puts 5.class.superclass # Numeric
puts 5.class.superclass.superclass # Object
puts 5.class.superclass.superclass.superclass # BasicObject
p 5.class.superclass.superclass.superclass.superclass # nil (end of hierarchy)
puts

p 5.class.ancestors # [Integer, Numeric, Comparable, Object, Kernel, BasicObject] Here Comparable and Kernel are modules
puts


class Employee
  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, I'm #{name} with age #{age}"
  end
end

emp1 = Employee.new("Mayuka", 25)
puts emp1.introduce # Hi, I'm Mayuka with age 25
puts

class Manager < Employee
  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  # Available only for Manager class
  def delegate
    "Delegating the work because my rank is #{rank}"
  end
end

class Worker < Employee
  # Override intoduce method
  def introduce
    result = super
    result + "Hi, I'm a Worker"
  end
end

manager1 = Manager.new("Manager1", 35, "VP")
worker1 = Worker.new("Worker1", 26)

puts manager1.class # Manager
puts worker1.class # Worker
puts manager1.introduce # Hi, I'm Manager1 with age 26
puts manager1.delegate # Delegating the work because my rank is VP
puts worker1.introduce # Hi, I'm Worker1 with age 26Hi, I'm a Worker
puts

puts "Does Manager inherit from Employee?: #{Manager < Employee}" # Does Manager inherit from Employee: true

# instance_of? method -> returns true if object is made from the class argument
# is_a? method -> returns true if object inherits from the class argument
puts manager1.instance_of?(Manager) # true
puts manager1.instance_of?(Employee) # false
puts manager1.is_a?(Manager) # true
puts manager1.is_a?(Employee) # true
puts

# methods method -> Returns an array of symbols which the ruby object contains
p 5.methods.sort
puts

# Overriding equality operator (==) to compare objects
class IceCream
  attr_reader :flavor, :calories, :price

  def initialize(flavor, calories, price)
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other)
    self.calories == other.calories && self.price == other.price
  end
end

vanilla = IceCream.new("Vanilla", 300, 50)
chocolate = IceCream.new("Chocolate", 500, 80)
mango = IceCream.new("Mango", 300, 50)
p chocolate == vanilla # false
p mango == vanilla # true
puts
