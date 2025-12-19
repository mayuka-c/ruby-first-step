# A mixin describes a module that we inject into the class to add additional behavior.
# Its a way to share the functionality between classes without declaring a superclass/subclass hierarchy

class Refrigerator
  include Enumerable # include Enumerable module which contains each, map, select, reject, any? and more

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

  def each
    items.each { |item| yield item }
  end

end

fridge = Refrigerator.new(snacks: ["Chips", "Icecream", "Frozen Food"], drinks: ["Maaza", "Slice", "Appy"])
p fridge.items # ["Chips", "Icecream", "Frozen Food", "Maaza", "Slice", "Appy"]
fridge.each { |item| puts "#{item} is delicious" }
p fridge.sort # Coming from the Enumerable module. Since we have told Ruby how to traverse by defining each method so now it has the logic to do sort, map, select etc

puts

class OlympicMedal
  include Comparable

  attr_reader :type

  def initialize(type)
    @type = type
  end

  # By defining spaceship operator we get access to <, >, <=, >= etc
  def <=>(other)
    medal_values = {gold: 3, silver: 2, bronze: 1}
    current_medal_value = medal_values[type]
    other_medal_value = medal_values[other.type]

    if current_medal_value < other_medal_value
      -1
    elsif current_medal_value == other_medal_value
      0
    else
      1
    end
  end
end

bronze = OlympicMedal.new(:bronze)
silver = OlympicMedal.new(:silver)
gold = OlympicMedal.new(:gold)
puts bronze > silver # false
puts gold > bronze # true