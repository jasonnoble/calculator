require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { described_class.new }

  describe '#new' do
    it 'creates a Calculator' do
      expect(calculator).to be_a(described_class)
    end
  end

  describe '#total' do
    it 'returns 0.00 by default' do
      expect(calculator.total).to eq(0.00)
    end
  end

  describe '#add(number)' do
    it 'adds positive numbers' do
      calculator.add(5)
      expect(calculator.total).to eq(5.0)
    end

    it 'adds negative numbers' do
      calculator.add(-5)
      expect(calculator.total).to eq(-5.0)
    end

    it 'adds zero' do
      calculator.add(5)
      calculator.add(0)
      expect(calculator.total).to eq(5.0)
    end

    it 'adds decimal numbers' do
      calculator.add(3.1415)
      expect(calculator.total).to eq(3.1415)
    end
  end

  describe '#subtract(number)' do
    it 'subtracts positive numbers' do
      calculator.subtract(5)
      expect(calculator.total).to eq(-5.0)
    end

    it 'subtracts negative numbers' do
      calculator.subtract(-5)
      expect(calculator.total).to eq(5.0)
    end

    it 'subtracts zero' do
      calculator.subtract(5)
      calculator.subtract(0)
      expect(calculator.total).to eq(-5.0)
    end

    it 'subtracts decimal numbers' do
      calculator.subtract(3.1415)
      expect(calculator.total).to eq(-3.1415)
    end
  end

  describe '#multiply(number)' do
    before do
      calculator.add(1)
    end

    it 'multiplies positive numbers' do
      calculator.multiply(5)
      expect(calculator.total).to eq(5.0)
    end

    it 'multiplies negative numbers' do
      calculator.multiply(-5)
      expect(calculator.total).to eq(-5.0)
    end

    it 'multiplies zero' do
      calculator.multiply(5)
      calculator.multiply(0)
      expect(calculator.total).to eq(0)
    end

    it 'multiplies decimal numbers' do
      calculator.multiply(3.1415)
      expect(calculator.total).to eq(3.1415)
    end
  end

  describe '#divide(number)' do
    before do
      calculator.add(1)
    end

    it 'divides positive numbers' do
      calculator.divide(5)
      expect(calculator.total).to eq(0.2)
    end

    it 'divides negative numbers' do
      calculator.divide(-5)
      expect(calculator.total).to eq(-0.2)
    end

    it 'divides zero' do
      calculator.divide(5)
      calculator.divide(0)
      expect(calculator.total).to be_infinite
    end

    it 'divides decimal numbers' do
      calculator.divide(3.1415)
      expect(calculator.total).to eq(0.31831927423205475)
    end

    context 'when the calculator total is zero' do
      before do
        calculator.subtract(1)
      end

      it 'divides decimal numbers' do
        calculator.divide(3.1415)
        expect(calculator.total).to eq(0.0)
      end
    end
  end

  describe '#clear' do
    it 'resets the total to 0.00' do
      calculator.add(5)
      calculator.clear
      expect(calculator.total).to eq(0.0)
    end
  end
end
