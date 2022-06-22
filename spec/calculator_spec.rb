require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { described_class.new }

  it "is a Calculator" do
    expect(calculator).to be_a(described_class)
  end

  describe "#total" do
    it "returns 0.00 by default" do
      expect(calculator.total).to eq(0.00)
    end
  end

  describe "#add(number)" do
    it "adds a positive number to the total" do
      calculator.add(5)
      expect(calculator.total).to eq(5)
    end

    it "adds a negative number to the total" do
      calculator.add(-5)
      expect(calculator.total).to eq(-5)
    end

    it "adds a zero to the total" do
      calculator.add(0)
      expect(calculator.total).to eq(0)
    end

    it "adds a decimal number to the total" do
      calculator.add(3.1415)
      expect(calculator.total).to eq(3.1415)
    end
  end

  describe "#subtract(number)" do
    it "subtracts a positive number to the total" do
      calculator.subtract(5)
      expect(calculator.total).to eq(-5)
    end

    it "subtracts a negative number to the total" do
      calculator.subtract(-5)
      expect(calculator.total).to eq(5)
    end

    it "subtracts a zero to the total" do
      calculator.subtract(0)
      expect(calculator.total).to eq(0)
    end

    it "subtracts a decimal number to the total" do
      calculator.subtract(3.1415)
      expect(calculator.total).to eq(-3.1415)
    end
  end

  describe "#multiply(number)" do
    describe "when the total is non-zero" do
      before do
        calculator.add(2)
      end

      it "multiplies a positive number to the total" do
        calculator.multiply(5)
        expect(calculator.total).to eq(10)
      end

      it "multiplies a negative number to the total" do
        calculator.multiply(-5)
        expect(calculator.total).to eq(-10)
      end

      it "multiplies a zero to the total" do
        calculator.multiply(0)
        expect(calculator.total).to eq(0)
      end

      it "multiplies a decimal number to the total" do
        calculator.multiply(3.1415)
        expect(calculator.total).to eq(6.283)
      end
    end

    describe "when the total is zero" do
      it "returns zero" do
        calculator.multiply(500)
        expect(calculator.total).to eq(0)
      end
    end
  end

  describe "#divide(number)" do
    describe "when the total is non-zero" do
      before do
        calculator.add(2)
      end

      it "divides the total by a positive number" do
        calculator.divide(5)
        expect(calculator.total).to eq(0.4)
      end

      it "divides the total by a negative number" do
        calculator.divide(-5)
        expect(calculator.total).to eq(-0.4)
      end

      it "divides the total by zero" do
        calculator.divide(0)
        expect(calculator.total).to be_infinite
      end

      it "divides the total by a decimal number" do
        calculator.divide(0.5)
        expect(calculator.total).to eq(4)
      end
    end

    describe "when the total is zero" do
      it "returns zero" do
        calculator.divide(500)
        expect(calculator.total).to eq(0)
      end
    end
  end

  describe "#clear" do
    describe "when the total is non-zero" do
      before do
        calculator.add(5)
      end

      it "resets the total to 0.00" do
        calculator.clear
        expect(calculator.total).to eq(0.00)
      end
    end

    describe "when the total is zero" do
      it "resets the total to 0.00" do
        calculator.clear
        expect(calculator.total).to eq(0.00)
      end
    end
  end
end
