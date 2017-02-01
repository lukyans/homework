gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/calculator"

class CalculatorTest < Minitest::Test
  def test_instance_exist
    calculator = Calculator.new
    assert calculator
  end


  def test_calculates_total
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_adding_number
    calculator = Calculator.new
    assert_equal 6, calculator.add(4) #total is 6
  end

def test_clear
  calculator = Calculator.new
    assert_equal 0, calculator.clear#(5)
  end

def test_substract
  calculator = Calculator.new
  assert_equal -10, calculator.subtract(10)
  end

end
