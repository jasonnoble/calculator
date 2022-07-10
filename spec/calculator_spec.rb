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
end
