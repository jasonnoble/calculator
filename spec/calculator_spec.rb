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
end
