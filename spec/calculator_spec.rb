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
end
