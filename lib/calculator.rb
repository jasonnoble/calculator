class Calculator
  attr_reader :total

  def initialize
    @total = 0.00
  end

  def add(number)
    @total += number
  end

  def subtract(number)
    @total -= number
  end

  def multiply(number)
    @total *= number
  end
end
