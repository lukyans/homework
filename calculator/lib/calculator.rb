require 'pry'
class Calculator
  attr_accessor :total
  def initialize
    @total =  0 #total is 6 in add method
  end
  def total
    @total
  end

  def add(number)
 @total += number
 @total +=2
 #binding.pry
  end

   def clear#(number)
     @total = 0
    # @total += number
    # @total = 0
    end

    def subtract(number)
      @total -= number
      end
end
