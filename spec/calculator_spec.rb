require 'spec_helper'
require './lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { described_class.new }

  it "is a Calculator" do
    expect(calculator).to be_a(described_class)
  end
end
