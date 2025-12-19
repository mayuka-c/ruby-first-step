def sum(a, b)
  begin
    puts a + b
  rescue TypeError => e
    # puts "Type Error: #{e.message}"
    a = a.to_i
    b = b.to_i
    retry # sends the control back to begin to do retry
  rescue => e
    puts "Class Name: #{e.class}"
    puts "Message: #{e.message}"
  ensure
    puts "Finally!"
  end
end

sum(3, "5")
puts
sum(nil, nil)
puts

# without using begin as any function is actually considered as begin
def sum(a, b)
  puts a + b
rescue TypeError => e
  # puts "Type Error: #{e.message}"
  a = a.to_i
  b = b.to_i
  retry # sends the control back to begin to do retry
rescue => e
  puts "Class Name: #{e.class}"
  puts "Message: #{e.message}"
ensure
  puts "Finally!"
end

sum(3, "5")
puts

# raise keyword
class Microwave
  attr_accessor :state

  def initialize
    @state = "off"
  end

  def turn_on
    self.state = "on"
  end

  def bake(item)
    if state == "off"
      raise "Please turn the microwave on before baking!"
    end
    puts "Baking the item: #{item}"
  end
end

oven = Microwave.new
p oven.bake("Pizza")