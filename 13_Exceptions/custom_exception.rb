class MicrowaveIsOffError < StandardError
end

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
      raise MicrowaveIsOffError, "Please turn the microwave on before baking!"
    end
    puts "Baking the item: #{item}"
  end
end

oven = Microwave.new

begin
  oven.bake("Pizza")
rescue MicrowaveIsOffError => e
  puts e.message
  puts "I will turn the oven on and try again"
  oven.turn_on
  retry
end