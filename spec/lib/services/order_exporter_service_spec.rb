require 'spec_helper'

RSpec.describe OrderExporterService do
  let(:data1) { [1, "book", 12.49] }
  let(:data2) { [1, "music cd", 14.99] }

  let(:order) { Order.new }
  let(:csv_header) { "quantity,product_name,total_price" }

  before do
    order.add_orderline(data1)
    order.add_orderline(data2)
  end

  describe "#to_csv" do
    context "when exporting order" do
      subject { described_class.to_csv(order) }

      let(:csv) { "#{csv_header}\n" +
        "1,book,12.49\n" +
        "1,music cd,16.49\n" +
        "\n" +
        "Sales Taxes: #{'%.2f' % order.total_taxes}\n" +
        "Total: #{'%.2f' % order.total_price}\n"
      }

      it { is_expected.to eq csv }
    end
  end
end


