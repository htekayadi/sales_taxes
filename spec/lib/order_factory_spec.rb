require 'spec_helper'

RSpec.describe OrderFactory do
  let(:data) { [
    [1, "book", 12.49],
    [1, "music cd", 14.99] ]}

  describe "#create" do
    let(:order) { OrderFactory.create(data: data) }

    it "create order with data" do
      expect(order.orderlines.size).to eq(2)
    end
  end
end