require 'spec_helper'

RSpec.describe TaxRate do
  let(:input1) { [1, "book", 12.49] }
  let(:input2) { [1, "music cd", 14.99] }

  describe "#apply" do
    it "calculate tax rate" do
      expect(TaxRate.new(input1[1], input1[2]).apply).to eq(0.0)
      expect(TaxRate.new(input2[1], input2[2]).apply).to eq(1.5)
    end
  end
end