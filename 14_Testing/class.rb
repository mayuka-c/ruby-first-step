require "minitest/autorun"

class Vehicle
  attr_reader :name, :wheels

  def initialize(name, wheels)
    @name = name
    @wheels = wheels
  end
end

class TestVehicle < Minitest::Test
  attr_reader :car

  def setup
    # Runs this method before each test
    @car = Vehicle.new("Car", 4)
  end

  def teardown
    # Runs this method after each test
    puts "Cleanup"
  end

  def test_name
    assert_equal("Car", car.name)
  end

  def test_wheels
    assert_equal(4, car.wheels)
  end
end