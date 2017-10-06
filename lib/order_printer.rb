class OrderPrinter
  def self.call(order:)
    new(order).call
  end

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def call
    order.orderlines.each do |orderline|
      puts "#{orderline.quantity}, #{orderline.product_name}, #{'%.2f' % orderline.total_price}"
    end

    puts "\n"
    puts "Sales Taxes: #{'%.2f' % order.total_taxes}"
    puts "Total: #{'%.2f' % order.total_price}"
  end
end