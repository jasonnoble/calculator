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

  def divide(number)
    @total /= number
  end

  def clear
    @total = 0.00
  end
end
