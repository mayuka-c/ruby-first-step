# Use modules/mixin when the relationship is a "has-a" relationship
# We can mix in multiple modules but only inherit from 1 superclass

module Purchaseable
  def purchase(item)
    "#{item} has been purchased"
  end
end

class Bookstore
  include Purchaseable
end

class SuperMarket
  include Purchaseable
end

class MKT < SuperMarket
end

bookstore = Bookstore.new
superMarket = SuperMarket.new
mkt = MKT.new

p bookstore.purchase("Coding book") # "Coding book has been purchased"
p superMarket.purchase("Chips") # "Chips has been purchased"
p mkt.purchase("Home Made Chips") # "Home Made Chips has been purchased"

p Bookstore.ancestors # [Bookstore, Purchaseable, Object, Kernel, BasicObject]
