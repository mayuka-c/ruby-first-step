# Keyword Arguments - allow invocation of a method to specify which parameters the arguments correspond to. With this we need not have to worry about order.
# Hash arguments

class Musical
  attr_reader :name, :type, :strings
  # attr_writer :type

  attr_accessor :type

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @strings = details[:strings]
  end
end

guitar = Musical.new({
  name: "Guitar",
  type: "Bass",
  strings: 6
})

puts guitar.name

# Keyword arguments
def sum(a:, b:)
  a + b
end

# while invoking call explicity mention a and b (same as Hash argument)
p sum(a: 2, b: 5)

# Optional keyword arguments
def sum(a: 3, b: 5)
  a + b
end

p sum

# Utilize keyword arguments
class Musical
  attr_reader :name, :type, :strings
  # attr_writer :type

  attr_accessor :type

  # Keyword parameters
  def initialize(name:, type:, strings: 6)
    @name = name
    @type = type
    @strings = strings
  end
end

guitar = Musical.new(name: "Guitar", type: "Bass")

puts guitar.name