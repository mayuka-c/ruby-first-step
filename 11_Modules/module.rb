# A module is a toolbox of related classes, methods and constants
# It organizes functionality into containers
# Modules are not classes; we cannot create "instances" of a module
# So a single module typically exists within each file
# If there exists multiple module with same, Ruby will simply aggregate the functionalities

module LengthConversions
  def self.meter_to_km(meter)
    meter / 1000.0
  end

  def self.feet_to_inches(feet)
    feet * 12
  end
end

puts LengthConversions.class # Module
puts LengthConversions.meter_to_km(1500) # 1.5
puts LengthConversions.feet_to_inches(5) # 60
