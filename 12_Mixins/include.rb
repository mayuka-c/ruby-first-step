# prepend keyword - to add something to the beginning of the class
# It adds the mixins methods before the instance method in the lookup order

module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end

  def className
    "The name of the class is #{self}"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    "#{item} has been purchased in bookstore"
  end
end

bookstore = Bookstore.new
puts bookstore.purchase("Coding book") # Coding book has been purchased
p Bookstore.ancestors # [Purchaseable, Bookstore, Object, Kernel, BasicObject]
puts bookstore.className # The name of the class is #<Bookstore:0x00000001006e76b0>

# extend keyword - add the mixins methods as class methods
class SuperMarket
  extend Purchaseable
end

puts SuperMarket.className # The name of the class is SuperMarket